<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="layout/header.jsp"/>

<div class="container py-5">
    <div class="row justify-content-center">
      <div class="col-md-6 text-center">
        <h1 class="display-1 fw-bold">401</h1>
        <p class="fs-3"> <span class="text-danger">No Autorizado</span></p>
        <p class="lead">Lo sentimos, no tienes permiso para acceder a esta página.</p>
        <a class="btn btn-secondary" href="${pageContext.request.contextPath}/index.jsp">volver al inicio</a>
      </div>
    </div>
  </div>
<jsp:include page="layout/footer.jsp"/>