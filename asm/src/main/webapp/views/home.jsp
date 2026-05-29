<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Trang Chủ - OE Entertainment</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container mt-4">
    <div class="d-flex justify-content-between align-items-center border-bottom pb-3 mb-4">
        <h1 class="text-primary fw-bold">ONLINE ENTERTAINMENT</h1>
        <div>
            <c:choose>
                <c:when test="${not empty sessionScope.currentUser}">
                    <span>Xin chào, <b>${sessionScope.currentUser.fullname}</b></span> | 
                    <a href="logout" class="btn btn-sm btn-outline-danger">Đăng xuất</a>
                </c:when>
                <c:otherwise>
                    <a href="login" class="btn btn-sm btn-primary">Đăng nhập</a>
                </c:otherwise>
            </c:choose>
        </div>
    </div>

    <div class="row">
        <c:forEach var="v" items="${videos}">
            <div class="col-md-4 mb-4">
                <div class="card h-100 shadow-sm">
                    <img src="${v.poster}" class="card-img-top" alt="Poster" style="height: 200px; object-fit: cover;">
                    <div class="card-body">
                        <h5 class="card-title text-truncate">${v.title}</h5>
                        <p class="card-text text-muted small">Lượt xem: ${v.views}</p>
                    </div>
                    <div class="card-footer d-flex justify-content-between bg-white border-top-0">
                        <a href="like?id=${v.id}" class="btn btn-sm btn-success px-3">Like</a>
                        <a href="share?id=${v.id}" class="btn btn-sm btn-warning text-white px-3">Share</a>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>

</body>
</html>