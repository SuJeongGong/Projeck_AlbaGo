<%@page import="java.util.ArrayList"%>
<%@page import="com.spring.ex.dto.Individual"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>개인검색</title>
</head>

<body>
    <div id="wrapper">
        <!-- 사이드 바 -->
        <%@ include file="../serve/manager_sidebar.jsp" %>

        <!-- content wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">
            <!-- main -->
            <div id="content">
                <!-- Topbar -->
                <%@ include file="../serve/manager_topbar.jsp" %>
		
				
                <!-- main 본문  -->
                <div class="container-fluid">

                    <div class="container">

                        <hr />
                        <h1 class="h3 mb-2 text-gray-800">개인 검색</h1>
                        <hr />

                        <div class="row">
                            <div class="col-md-12">
                                <form action="#" method="get">
                                    <div class="input-group">
                                        <!-- USE TWITTER TYPEAHEAD JSON WITH API TO SEARCH -->
                                      
                                            <select name="search">
                                                <option value="individual_id">아이디</option>
                                                <option value="name">이름</option>
                                                <option value="phone">연락처</option>
                                            </select>
                                        
                                        <input class="form-control" id="system-search" name="q" placeholder="Search for" required> <!-- 검색내용입력 -->
                                        <span class="input-group-btn">
                                            <button type="submit" class="btn btn-info">검색</button>
                                        </span>
                                    </div>
                               </form>
                            </div>
                      
                            <div class="col-md-12">
                                <table class="table table-list-search"> <!-- 테이블시작 -->
                                    <thead>
                                        <tr>
                                            <th>회원이름</th>
                                            <th>아이디</th>
                                            <th>비밀번호</th>
                                         
                                            <th>연락처</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <%
											ArrayList<Individual> individuals = (ArrayList)request.getAttribute("individuals");
											for (int i = 0; i < individuals.size(); i++) {
												Individual list = individuals.get(i);
												String individual_id=list.getIndividual_id();
												String password=list.getPassword();
												String name=list.getName();
												String gender=list.getGender();
												String birth=list.getBirth();
												String phone=list.getPhone();
												String education=list.getEducation();
												String date=list.getDate();
											%>
                                        <tr>
                                            <td><a href="individual_detail"></a><%=name%></td>
                                            <td><%=individual_id%></td>
                                            <td><%=password %></td>
                                            <td><%=phone %></td>
                                        </tr>
                                       
                                        <%} %>
                                        
                                    </tbody>
                                </table>
                            </div>

                            <div class="text-center" style="float: left;">
                                <ul class="pagination">
                                    <li class="page-item disabled">
                                        <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
                                    </li>
                                    <li class="page-item active" aria-current="page"><a class="page-link" href="#">1
                                            <span class="sr-only">(current)</span></a></li>
                                    <li class="page-item"><a class="page-link" href="#">2 </a></li>
                                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                                    <li class="page-item"><a class="page-link" href="#">4</a></li>
                                    <li class="page-item"><a class="page-link" href="#">5</a></li>
                                    <li class="page-item">
                                        <a class="page-link" href="#">Next</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>

                </div>
            </div><!-- 끝 main -->
            <!-- footer -->
            <%@ include file="../serve/manager_footer.jsp" %>
        </div><!-- 끝 content wrapper -->
    </div><!-- 끝  wrapper -->
</body>

</html>