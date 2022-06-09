<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<!DOCTYPE html>
<html>
 
<head> 
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body>
    <main class="container-fluid">
     
        <section class="row">
            <div class="col mt-4">
                <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <li class="nav-item" role="presentation">
                        <a class="nav-link active" id="videadmindit-tab" data-toggle="tab" href="#videadmindit" role="tab"
                            aria-controls="videadmindit" aria-selected="true">User Edit</a>
                    </li>

                    <li class="nav-item" role="presentation">
                        <a class="nav-link" id="videoList-tab" data-toggle="tab" href="#videoList" role="tab"
                            aria-controls="videoList" aria-selected="false">User List</a>
                    </li>

                </ul>
                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="videadmindit" role="tabpanel"
                        aria-labelledby="videadmindit-tab">
                        <form action="" method="post">
                            <div class="card">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col">
                                            <div class="form-group">
                                                <label for="username">Username</label>
                                                <input type="text"  class="form-control" name="username" placeholder="Username" disabled>
                                                <small id="usernameHid" class="form-text text-muted">Username is
                                                    required</small>
                                            </div>

                                            <div class="form-group">
                                                <label for="fullname">Fullname</label>
                                                <input type="text"  class="form-control" name="name"  placeholder="Fullname">
                                                <small class="form-text text-muted">Fullname is
                                                    required</small>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="form-group">
                                                <label for="password">Password</label>
                                                <input type="password"  class="form-control" name="password"
                                                    placeholder="Password">
                                                <small class="form-text text-muted">Password is
                                                    required</small>
                                            </div>
                                            <div class="form-group">
                                                <label for="email">Email</label>
                                                <input type="text"  class="form-control" name="email" placeholder="Email">
                                                <small class="form-text text-muted">Email is
                                                    required</small>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="form-group">
                                                <label for="password">Số điên thoại</label>
                                                <input type="text"  class="form-control" name="tel"
                                                    placeholder="Số điện thoại">
                                                <small class="form-text text-muted">SDT is
                                                    required </small>
                                            </div>
                                            <div class="form-group">
                                                <label for="email">Ngày sinh</label>
                                                <input type="date"  class="form-control" name="birthday" 
                                                    placeholder="Ngày sinh">
                                                <small  class="form-text text-muted">Ngày sinh is
                                                    required</small>
                                            </div>

                                        </div>
                                        
                                    </div>
                                    <div class="row">
                                        
                                            <div class="form-group col">
                                                <label for="password">Địa chỉ</label>
                                                <textarea  class="form-control" name="address"></textarea>
                                                    <small  class="form-text text-muted">Địa chỉ is
                                                    required</small>
                                            </div>
                                            
                                            <div class="form-group col">
                                                <label for="password">Procvince</label>
                                                <textarea  class="form-control" name="procvince"></textarea>
                                                    <small id="passwordHid" class="form-text text-muted">procvince is
                                                    required</small>
                                            </div>
                                     
                                        
                                    </div>
                                    <div class="row">
                                        <div class="form-check form-check-inline col" style="margin-left: 20px">
                                            <label><input type="radio" class="form-check-input" value="true" ${check}
                                                 name="active" id="status">Hoạt Động</label>
                                            <label style="margin-left: 22px;"><input type="radio" class="form-check-input" value="false" ${checks}
                                                 name="active" id="status">Không Hoạt Động</label>
                                        </div>
                                        <div class="form-check form-check-inline col " style="margin-left: 20px">
                                            <label><input type="radio" class="form-check-input" value="true" ${check}
                                                name="active" id="status">Admin</label>
                                            <label style="margin-left: 22px;"><input type="radio" class="form-check-input" value="false" ${checks}
                                                 name="active" id="status">User</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer text-muted">
                                    <button formaction="/fpoly/admin/user/edits/create" class="btn btn-primary">Create</button>
                                    <button formaction="/fpoly/admin/user/edits/update" class="btn btn-warning">Update</button>
                                    <button formaction="/fpoly/admin/user/edits/delete" class="btn btn-danger">Delete</button>
                                    <button type="reset" class="btn btn-info">Reset</button>
                                </div>
                            </div>
                        </form>
                    </div>

                    <div class="tab-pane fade${showuseredit}" id="videoList" role="tabpanel" aria-labelledby="videoList-tab">
                        <table class="table table-stripe">
                            <tr style="background-color: antiquewhite;">
                            	<td>STT</td>
                                <td>Username</td>
                                <td>Họ Và Tên</td>
                                <td>Ngày Sinh</td>
                                <td>Email</td>
                                <td>Chức Vụ</td>
                                <td>Trạng thái</td>
                                <td>&nbsp;</td>
                            </tr>

                            <c:set var="count" value="${0}" scope="request" />
                            <c:forEach var="users" items="${listuser}">
                            	<tr>

                            		<c:set var="count" value="${count+1}" scope="request"/>
                            		<td>${count}</td>
	                                <td>${users.id}</td>
	                                <td>${users.fullname}</td>
                                    <td>Ngày Sinh</td>
	                                <td>${users.email}</td>

	                                	<c:choose>
	                                		<c:when test="${user.adminn}">Quản Lý</c:when>
	                                		<c:otherwise>Người Dùng</c:otherwise>
	                                	</c:choose>
	                                </td>
                                    <td>${users.fullname}</td>
                                    <td>${users.fullname}</td>
	                                <td>
	                                <form action="/fpoly/admin/user/edit/${user.id}" method="post">
	                                	<a href="javascript:;" onclick="parentNode.submit();"><i class="fa fa-edit" aria-hidden="true"></i>  Edit</a>
	                                </form>
	                                <form action="/fpoly/admin/user/delete/${user.id}" method="post">
	                                	<a href="javascript:;" onclick="parentNode.submit();"><i class="fa fa-trash" aria-hidden="true">   Delete</i></a>
	                                </form>
	                                </td>
                           		</tr>
                            </c:forEach>
                            
                        </table>
                    </div>
                </div>
            </div>
        </section>
        <footer class="row">
            
        </footer>
       
    </main>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
    <script>
        $('#myTab a').on('click', function (event) {
            event.preventDefault()
            $(this).tab('show')
        })
    </script>
</body>


</html>