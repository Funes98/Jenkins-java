<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lista de Usuarios</title>
</head>
<body>
    <h1>Lista de Usuarios</h1>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>Correo Electrónico</th>
        </tr>
        <%-- Simulación de una lista de usuarios --%>
        <% 
            // Declaración de una lista de usuarios
            List<Usuario> usuarios = new ArrayList<>();
            usuarios.add(new Usuario(1, "Juan", "juan@example.com"));
            usuarios.add(new Usuario(2, "María", "maria@example.com"));
            usuarios.add(new Usuario(3, "Pedro", "pedro@example.com"));

            // Iterar sobre la lista de usuarios y mostrarlos en la tabla
            for (Usuario usuario : usuarios) {
        %>
        <tr>
            <td><%= usuario.getId() %></td>
            <td><%= usuario.getNombre() %></td>
            <td><%= usuario.getCorreo() %></td>
        </tr>
        <% } %>
    </table>
</body>
</html>