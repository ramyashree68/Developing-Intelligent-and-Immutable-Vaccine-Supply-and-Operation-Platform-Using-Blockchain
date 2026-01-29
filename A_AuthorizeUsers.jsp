<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Admin — Authorize Users | Immutable Vaccine Supply</title>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap" rel="stylesheet">
  <style>
    :root{
      --bg: #9E4638;          /* brand brown */
      --card: rgba(12,12,30,.6);
      --muted: #a7b0c0;
      --text: #e5e7eb;
      --brand: #5eead4;       /* teal */
      --accent: #60a5fa;      /* blue */
      --maxw: 1200px;
      --radius: 18px;
      --border: rgba(255,255,255,.10);
      --row: rgba(255,255,255,.04);
    }
    *{box-sizing:border-box}
    html,body{margin:0;padding:0}
    body{
      font-family: Inter, system-ui, -apple-system, Segoe UI, Roboto, "Helvetica Neue", Arial, "Noto Sans", "Apple Color Emoji", "Segoe UI Emoji";
      background: linear-gradient(180deg,#954535 0%, #0b1220 100%);
      color: var(--text);
      line-height: 1.6;
      min-height:100vh; display:flex; flex-direction:column;
    }
    a{color:inherit;text-decoration:none}
    .container{max-width:var(--maxw);margin:0 auto;padding:24px}

    /* Header / Nav */
    header{position:sticky;top:0;z-index:50;backdrop-filter:saturate(180%) blur(10px);background:rgba(12,12,30,.6);border-bottom:1px solid rgba(255,255,255,.06)}
    .nav{display:flex;align-items:center;justify-content:space-between;gap:16px;padding:14px 24px}
    .brand{display:flex;align-items:center;gap:12px;font-weight:700}
    .brand .dot{width:12px;height:12px;border-radius:50%;background:linear-gradient(135deg,var(--brand),var(--accent));box-shadow:0 0 24px rgba(94,234,212,.6)}
    .brand .title{letter-spacing:.2px}
    .nav ul{display:flex;gap:8px;list-style:none;margin:0;padding:0}
    .nav a.navlink{display:inline-block;padding:10px 14px;border-radius:12px;color:var(--text);font-weight:600;letter-spacing:.2px;transition:all .18s ease}
    .nav a.navlink:hover{background:rgba(255,255,255,.06)}
    .nav a.active{background:linear-gradient(135deg, rgba(94,234,212,.15), rgba(96,165,250,.15));outline:1px solid rgba(94,234,212,.35)}

    /* Page header */
    .pagehead{padding:28px 24px 0}
    .pagehead h1{margin:0;font-size: clamp(22px, 2.6vw, 30px);background:linear-gradient(135deg,var(--text),#cbd5e1);-webkit-background-clip:text;background-clip:text;color:transparent}
    .pagehead p{margin:6px 0 0;color:var(--muted)}

    main{flex:1}

    /* Card */
    .card{background:var(--card);border:1px solid var(--border);border-radius:var(--radius);padding:18px;margin-top:18px;box-shadow:0 12px 32px rgba(2,6,23,.45)}

    /* Table */
    .table-wrap{overflow:auto;border-radius:12px;border:1px solid var(--border)}
    table{width:100%;border-collapse:separate;border-spacing:0;min-width:920px}
    thead th{position:sticky;top:0;background:rgba(12,12,30,.75);backdrop-filter:blur(8px);text-align:left;padding:12px 14px;font-weight:700;color:#dbeafe;border-bottom:1px solid var(--border)}
    tbody td{padding:12px 14px;border-bottom:1px solid var(--border);vertical-align:middle}
    tbody tr:nth-child(even){background:var(--row)}
    tbody tr:hover{background:rgba(255,255,255,.06)}

    .chip{display:inline-flex;align-items:center;gap:8px;padding:6px 10px;border-radius:999px;font-weight:700}
    .chip.wait{background:rgba(96,165,250,.15);outline:1px solid rgba(96,165,250,.35);color:#dbeafe}
    .chip.ok{background:rgba(94,234,212,.15);outline:1px solid rgba(94,234,212,.35);color:#ccfbf1}

    .btn{display:inline-block;padding:8px 12px;border-radius:12px;font-weight:700;color:#0b1220;background:linear-gradient(135deg,var(--brand),var(--accent));box-shadow:0 8px 20px rgba(20,184,166,.25)}
    .btn.outline{background:transparent;color:var(--text);outline:1px solid rgba(255,255,255,.25)}

    .avatar{width:64px;height:64px;border-radius:12px;object-fit:cover;border:1px solid var(--border)}

    /* Footer */
    footer{padding:36px 24px;color:#c6cdd8;text-align:center;border-top:1px solid rgba(255,255,255,.06)}
  </style>
</head>
<body>
  <header>
    <nav class="nav container" aria-label="Primary">
      <div class="brand">
        <span class="dot" aria-hidden="true"></span>
        <a href="index.html" class="title">Immutable Vaccine Supply</a>
      </div>
      <ul>
        <li><a class="navlink" href="index.html">Home</a></li>
        <li><a class="navlink active" href="A_Login.jsp">Admin</a></li>
        <li><a class="navlink" href="U_Login.jsp">User</a></li>
      </ul>
    </nav>
  </header>

  <main class="container">
    <section class="pagehead">
      <h1>Authorized Users</h1>
      <p>Review registered users and update their status.</p>
    </section>

    <section class="card">
      <div class="table-wrap">
        <table role="table" aria-label="Authorized Users">
          <thead>
            <tr>
              <th>ID</th>
              <th>User Image</th>
              <th>User Name</th>
              <th>Email</th>
              <th>Mobile</th>
              <th>Location</th>
              <th>Status</th>
            </tr>
          </thead>
          <tbody>
            <%@ include file="connect.jsp" %>
            <%
              String s1,s2,s3,s4,s5,s6,s7; int i=0;
              try {
                String query="select * from user";
                Statement st=connection.createStatement();
                ResultSet rs=st.executeQuery(query);
                while (rs.next()){
                  i=rs.getInt(1);
                  s1=rs.getString(2);
                  s2=rs.getString(4);
                  s5=rs.getString(5);
                  s3=rs.getString("location");
                  s4=rs.getString(10);
                  s6=rs.getString(9);
            %>
            <tr>
              <td><% out.println(i); %></td>
              <td>
                <!-- Keep only functional image (user avatar) -->
                <img class="avatar" src="images.jsp?id=<%=i%>" alt="User <%=i%> avatar" />
              </td>
              <td><% out.println(s1); %></td>
              <td><% out.println(s2); %></td>
              <td><% out.println(s5); %></td>
              <td><% out.println(s6); %></td>
              <td>
                <%
                  if("waiting".equalsIgnoreCase(s4)){
                %>
                  <a class="chip wait" href="Authentication.jsp?value=<%="userstatus"%>&id=<%=i%>">waiting</a>
                <%
                  } else {
                %>
                  <span class="chip ok"><% out.println(s4); %></span>
                <%
                  }
                %>
              </td>
            </tr>
            <%
                }
                connection.close();
              } catch(Exception e){ out.println(e); }
            %>
          </tbody>
        </table>
      </div>
      <div style="margin-top:16px;display:flex;justify-content:flex-end;gap:12px">
        <a class="btn outline" href="A_Main.jsp">Back</a>
      </div>
    </section>
  </main>

  <footer>
    <div class="container">© 2025 Immutable Vaccine Supply</div>
  </footer>
</body>
</html>