<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="layout/header.jsp"/>

<h3>${title}</h3>
<c:if test="${username.present}">
   <div class="alert alert-info">Hola ${username.get()}, bienvenido!</div>
   <a class="btn btn-primary mb-2" href="${pageContext.request.contextPath}/productos/form">crear [+]</a>
</c:if>
<table class="table table-hover table-striped">
    <tr>
        <th>id</th>
        <th>nombre</th>
        <th>tipo</th>
        <c:if test="${username.present}">
        <th>precio</th>
        <th>agregar</th>
        <th>editar</th>
        <th>eliminar</th>
        </c:if>
    </tr>
    <c:forEach items="${productos}" var="p">
    <tr>
        <td>${p.id}</td>
        <td>${p.nombre}</td>
        <td>${p.categoria.nombre}</td>
        <c:if test="${username.present}">
        <td>${p.precio}</td>
        <td><a class="btn btn-sm btn-primary" href="${pageContext.request.contextPath}/carro/agregar?id=${p.id}">agregar al carro</a></td>
        <td><a class="btn btn-sm btn-success" href="${pageContext.request.contextPath}/productos/form?id=${p.id}">editar</a></td>
        <td><a class="btn btn-sm btn-danger" onclick="return confirm('esta seguro que desea eliminar?');"
        href="${pageContext.request.contextPath}/productos/eliminar?id=${p.id}">eliminar</a></td>
        </c:if>
    </tr>
    </c:forEach>
</table>
<div class="my-2">
    <a class="btn btn-secondary" href="${pageContext.request.contextPath}/index.jsp">volver al inicio</a>
</div>
<jsp:include page="layout/footer.jsp"/>