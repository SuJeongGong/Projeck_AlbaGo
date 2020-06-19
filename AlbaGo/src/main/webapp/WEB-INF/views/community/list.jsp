<%@page import="com.spring.ex.dto.BoardCommunity"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../serve/header.jsp" %>
	
	
	
	
	
	<!--================Blog Area =================-->
    <section class="blog_area section-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 mb-5 mb-lg-0">
                    <div class="blog_left_sidebar">
                    <%
                    
                    	ArrayList<BoardCommunity> communitys  = (ArrayList<BoardCommunity>)request.getAttribute("communitys");
                    	for(int i =0; i<communitys.size();i++){
                    		BoardCommunity community =communitys.get(i);
                    		String title = community.getTitle();
                    		String id = community.getIndividual_id();
                    		String date = community.getDate();
                    		
                    		%>
                    		
                    		
                    		
                  		<article class="blog_item">
                            <div class="blog_details">
                                <div class="row">
                                    <p class="col-lg-6"><%=id %></p>
                                    <div class="col-lg-6"><i class="fa fa-clock-o "></i><%=date %></div>
                                </div>
                                <br />
                                <a class="d-inline-block" href="content">
                                    <h2><%=title %></h2>
                                </a>
                            </div>
                        </article> 
                    		
                    		
                    		
                    		<%
                    	}
                    	
                    
                    
                    
                    
                    %>
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                   
                        <nav class="blog-pagination justify-content-center d-flex">
                        
                            <ul class="pagination">
                                <li class="page-item">
                                    <a href="#" class="page-link" aria-label="Previous">
                                        <i class="ti-angle-left"></i>
                                    </a>
                                </li>
                                <li class="page-item">
                                    <a href="#" class="page-link">1</a>
                                </li>
                                <li class="page-item active">
                                    <a href="#" class="page-link">2</a>
                                </li>
                                <li class="page-item">
                                    <a href="#" class="page-link" aria-label="Next">
                                        <i class="ti-angle-right"></i>
                                    </a>
                                </li>
                            </ul>
                            
        <a class="boxed-btn3" href="write">글쓰기</a>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================Blog Area =================-->
 
	
	
	
	
	
	<%@ include file="../serve/footer.jsp" %>

</body>
</html>