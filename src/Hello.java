package com.osk.team.web;
// 젠장
import java.io.IOException;
import java.util.UUID;
import java.text.SimpleDateFormat;
import java.sql.Date;
import javax.servlet.http.Part;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.osk.team.domain.Member;
import com.osk.team.service.MemberService;

import net.coobird.thumbnailator.ThumbnailParameter;
import net.coobird.thumbnailator.Thumbnails;
import net.coobird.thumbnailator.geometry.Positions;
import net.coobird.thumbnailator.name.Rename;

@SuppressWarnings("serial")
@MultipartConfig(maxFileSize = 1024 * 1024 * 10)
@WebServlet("/member/add")
public class MemberAddHandler extends HttpServlet {

  SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");

  private String uploadDir;


  @Override
  public void init() throws ServletException {
    this.uploadDir = this.getServletContext().getRealPath("/upload");
  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {

    MemberService memberService = (MemberService) request.getServletContext().getAttribute("memberService");

    try {
      Member m = new Member();
      m.setNo(Integer.parseInt(request.getParameter("no")));
      m.setName(request.getParameter("name"));
      m.setPassword(request.getParameter("password"));
      m.setEmail(request.getParameter("email"));
      m.setTel(Integer.parseInt(request.getParameter("tel")));
      m.setGender(Integer.parseInt(request.getParameter("gender")));
      m.setBirth(Date.valueOf(request.getParameter("birth")));
      m.setStatus(Integer.parseInt(request.getParameter("status")));
      m.setPower(Integer.parseInt(request.getParameter("power")));
      m.setStatus(Integer.parseInt(request.getParameter("count")));

      try {
        Member m1 = new Member();
        m1.setNo(Integer.parseInt(request.getParameter("no")));
        m1.setName(request.getParameter("name"));
        m1.setPassword(request.getParameter("password"));
        m1.setEmail(request.getParameter("email"));
        m1.setTel(Integer.parseInt(request.getParameter("tel")));
        m1.setGender(Integer.parseInt(request.getParameter("gender")));
        m1.setBirth(Date.valueOf(request.getParameter("birth")));
        m1.setStatus(Integer.parseInt(request.getParameter("status")));
        m1.setPower(Integer.parseInt(request.getParameter("power")));
        m1.setStatus(Integer.parseInt(request.getParameter("count")));

        Part photoPart = request.getPart("photo");
        if (photoPart.getSize() > 0) {
          // 파일을 선택해서 업로드 했다면,
          String filename = UUID.randomUUID().toString();
          photoPart.write(this.uploadDir + "/" + filename);
          m1.setPhoto(filename);

          // 썸네일 이미지 생성
          Thumbnails.of(this.uploadDir + "/" + filename)
          .size(30, 30)
          .outputFormat("jpg")
          .crop(Positions.CENTER)
          .toFiles(new Rename() {
            @Override
            public String apply(String name, ThumbnailParameter param) {
              return name + "_30x30";
            }
          });

          Thumbnails.of(this.uploadDir + "/" + filename)
          .size(80, 80)
          .outputFormat("jpg")
          .crop(Positions.CENTER)
          .toFiles(new Rename() {
            @Override
            public String apply(String name, ThumbnailParameter param) {
              return name + "_80x80";
            }
          });
        }
        memberService.add(m1);
        response.sendRedirect("list");
      } catch (Exception e){
        throw new ServletException(e);
    }

} finally
}
}

