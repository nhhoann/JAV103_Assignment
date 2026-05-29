<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Đăng Nhập - OE</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="d-flex align-items-center justify-content-center bg-secondary" style="height: 100vh;">

<div class="card p-4 shadow" style="width: 400px;">
    <h3 class="text-center mb-4 text-dark fw-bold">LOGIN</h3>
    
    <c:if test="${not empty error}">
        <div class="alert alert-danger py-2 small">${error}</div>
    </c:if>

    <form action="login" method="POST">
        <div class="mb-3">
            <label class="form-label text-muted small fw-bold">USERNAME?</label>
            <input type="text" name="username" class="form-control" required>
        </div>
        <div class="mb-3">
            <label class="form-label text-muted small fw-bold">PASSWORD?</label>
            <input type="password" name="password" class="form-control" required>
        </div>
        <div class="form-check mb-3">
            <input type="checkbox" class="form-check-input" id="rememberMe">
            <label class="form-check-label small" for="rememberMe">REMEMBER ME?</label>
        </div>
        <button type="submit" class="btn btn-warning text-white w-100 fw-bold">Login</button>
    </form>
</div>

</body>
</html>