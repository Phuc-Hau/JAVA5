<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>

  <div class="content-wrapper">
    <div class="page-header">
      <h3 class="page-title">
        <span class="page-title-icon bg-gradient-primary text-white me-2">
          <i class="mdi mdi-account-card-details"></i>
        </span>
        User Tables
      </h3>
    </div>
    <div class="row">


      <div class="col-lg-12 grid-margin stretch-card">
        <div class="card">
          <div class="card-body">User Table</h4>
            <table class="table table-striped">
              <thead>
                <tr>
                  <th> # </th>
                  <th> IMG </th>
                  <th> User </th>
                  <th> Full name </th>
                  <th> Birthday </th>
                  <th> Rule </th>
                  <th> Status </th>
                  <th> <i class="mdi mdi-border-color"></i> </th>
                </tr>
              </thead>
              <tbody>
              <c:set var = "count" scope = "session" value = "1"/>
              <c:forEach var="item" items="${adminlistuser }">
                <tr>
                  <td>${count}</td>
                  <td class="py-1">
                    <img src="/view/admin/assets/images/faces-clipart/pic-1.png" alt="image" />
                  </td>
                  <td>${item.username}</td>
                  <td>
                    ${item.cutomer.name}
                  </td>
                  <td> ${item.cutomer.birthday} </td>
                  <td> ${item.rules} </td>
                  <td> 
                  	<c:choose>
                  		<c:when test="${item.status==true}">Đang hoạt động</c:when>
                  		<c:otherwise>Đã tắc hoạt động</c:otherwise>
                  	</c:choose>
                   </td>
                  <td><a href="/admin/user/edit/${item.id}">Edit</a> / 
                  	<a href="/admin/user/delete/${item.id}">Delete</a></td>
                </tr>
                <tr>
                <c:set var = "count" scope = "session" value = "${count+1}"/>
                </c:forEach>
               
              </tbody>
            </table>
          </div>
        </div>
      </div>

    </div>
  </div>
 