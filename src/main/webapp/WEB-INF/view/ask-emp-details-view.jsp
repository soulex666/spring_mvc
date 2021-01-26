<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<body>

<h2>Dear Employee, please enter your details:</h2>
<br>
<form:form action="showDetails" modelAttribute="employee">

    Name <form:input path="name"/>
    <form:errors path="name"/>
    <br>
    <br>
    Surname <form:input path="surname"/>
    <form:errors path="surname"/>
    <br>
    <br>
    Salary <form:input path="salary"/>
    <form:errors path="salary"/>
    <br>
    <br>
    Phone number(xxx-xx-xx) <form:input path="phoneNumber"/>
    <form:errors path="phoneNumber"/>
    <br>
    <br>
    E-mail  <form:input path="emailAddress"/>
    <form:errors path="emailAddress"/>
    <br>
    <br>
    Department <form:select path="department">
<%--    можно указать на мэп, чтобы он подцеплял из него значения--%>
<%--    <form:options items="${employee.mapName}"/>--%>
    <form:option value="Information Technology" label="IT"/>
    <form:option value="Human Resources" label="HR"/>
    <form:option value="Sales" label="Sales"/>
</form:select>
    <br>
    <br>
    Which car do you want?
    <%--    можно указать на мэп, чтобы он подцеплял из него значения--%>
    <%--    <form:radiobuttons path="carBrand" items="${employee.carBrands}"/>--%>
    BMW <form:radiobutton path="carBrand" value="BMW"/>
    AUDI <form:radiobutton path="carBrand" value="AUDI"/>
    MB <form:radiobutton path="carBrand" value="Mercedes Bens"/>
    <br>
    <br>
    Foreign Language(s):
    <%--    можно указать на мэп, чтобы он подцеплял из него значения--%>
    <%--    <form:checkboxes path="languages" items="${employee.languageMap}"/>--%>
    EN <form:checkbox path="languages" value="English"/>
    RU <form:checkbox path="languages" value="Russian"/>
    DE <form:checkbox path="languages" value="German"/>
    <br>
    <br>

    <input type="submit" value="OK">

</form:form>
</body>
</html>
