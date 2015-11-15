<%
    session.invalidate();
    //session.setAttribute("ID", "");
    String site = new String("homepage.jsp");
    response.setStatus(response.SC_MOVED_TEMPORARILY);
    response.setHeader("Location", site);
%>
