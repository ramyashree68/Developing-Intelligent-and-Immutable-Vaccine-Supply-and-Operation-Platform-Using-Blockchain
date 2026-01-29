<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>User Profile — Immutable Vaccine Supply</title>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700;800&display=swap" rel="stylesheet">
  <style>
    :root{
      --rust: #954535;          /* top gradient */
      --deep: #0b1220;          /* bottom gradient */
      --card: rgba(12,12,30,.6);/* surfaces */
      --muted: #a7b0c0;         /* secondary text */
      --text: #e5e7eb;          /* primary text */
      --brand: #5eead4;         /* teal */
      --accent: #60a5fa;        /* blue */
      --border: rgba(255,255,255,.08);
      --radius: 18px;
      --maxw: 1200px;
    }

    *{box-sizing:border-box}
    html,body{margin:0;padding:0}
    body{
      font-family: Inter, system-ui, -apple-system, Segoe UI, Roboto, "Helvetica Neue", Arial;
      background: linear-gradient(180deg,var(--rust) 0%, var(--deep) 100%);
      color: var(--text);
      line-height: 1.6;
      min-height:100vh; display:flex; flex-direction:column;
    }
    a{color:inherit;text-decoration:none}
    .container{max-width:var(--maxw);margin:0 auto;padding:24px}

    /* Header / Nav like sample */
    header{
      position:sticky; top:0; z-index:50;
      backdrop-filter:saturate(180%) blur(10px);
      background: rgba(12,12,30,.6);
      border-bottom:1px solid rgba(255,255,255,.06);
    }
    .nav{display:flex;align-items:center;justify-content:space-between;gap:16px;padding:14px 24px}
    .brand{display:flex;align-items:center;gap:12px;font-weight:800;letter-spacing:.2px}
    .brand .dot{width:12px;height:12px;border-radius:50%;background:linear-gradient(135deg,var(--brand),var(--accent));box-shadow:0 0 24px rgba(94,234,212,.6)}
    .brand .title{letter-spacing:.2px;font-size:16px}
    .nav ul{display:flex;gap:8px;list-style:none;margin:0;padding:0}
    .nav a.navlink{
      display:inline-block;padding:10px 14px;border-radius:12px;
      color:var(--text);font-weight:700;letter-spacing:.2px;transition:all .18s ease
    }
    .nav a.navlink:hover{background:rgba(255,255,255,.06)}
    .nav a.active{background:linear-gradient(135deg, rgba(94,234,212,.15), rgba(96,165,250,.15));outline:1px solid rgba(94,234,212,.35)}

    /* Hero */
    main{flex:1}
    .hero{padding:42px 24px 20px}
    .hero-card{
      background:var(--card); border:1px solid var(--border);
      border-radius:var(--radius); padding:24px;
      box-shadow:0 12px 32px rgba(2,6,23,.45)
    }
    .hero h1{
      margin:0 0 8px; font-size:clamp(24px, 3vw, 36px);
      background: linear-gradient(135deg, var(--text), #cbd5e1);
      -webkit-background-clip:text; background-clip:text; color:transparent
    }
    .hero p{color:var(--muted);margin:0}

    /* Profile card */
    .section{padding:12px 24px 36px}
    .profile-card{
      background:var(--card); border:1px solid var(--border);
      border-radius:var(--radius); padding:22px;
      box-shadow:0 10px 28px rgba(2,6,23,.45)
    }
    .profile{
      display:grid; grid-template-columns: 220px 1fr; gap:18px; align-items:start;
    }
    @media (max-width: 720px){
      .profile{grid-template-columns:1fr}
    }
    .avatar{
      width:200px;height:200px;border-radius:14px;object-fit:cover;
      border:1px solid var(--border); background:#0f172a;
    }
    .kv{
      display:grid; grid-template-columns: 180px 1fr; gap:10px 14px;
    }
    @media (max-width: 560px){ .kv{grid-template-columns:1fr} }
    .label{color:#cbd5e1;font-weight:700}
    .value{color:var(--text)}
    .actions{display:flex;justify-content:flex-end;margin-top:14px}
    .btn{
      display:inline-flex;align-items:center;gap:8px;
      padding:10px 14px;border-radius:12px;font-weight:700;
      background:rgba(12,12,30,.6);
      color:#fff; border:none;
    }

    /* Footer */
    footer{padding:36px 24px;color:#c6cdd8;text-align:center;border-top:1px solid rgba(255,255,255,.06)}
  </style>
</head>
<body>
  <!-- Header / Nav -->
  <header>
    <nav class="nav container" aria-label="Primary">
      <div class="brand">
        <span class="dot" aria-hidden="true"></span>
        <a href="index.html" class="title">Immutable Vaccine Supply</a>
      </div>
      <ul>
        <li><a class="navlink" href="index.html">Home</a></li>
        <li><a class="navlink" href="A_Login.jsp">Admin</a></li>
        <li><a class="navlink active" href="U_Login.jsp">User</a></li>
      </ul>
    </nav>
  </header>

  <!-- Main -->
  <main>
    <!-- Hero -->
    <section class="hero container">
      <div class="hero-card">
        <h1>User <%= (String) application.getAttribute("uname") %>'s Profile</h1>
        <p>View your registered details and account status.</p>
      </div>
    </section>

    <!-- Profile details -->
    <section class="section container">
      <div class="profile-card">
        <%@ include file="connect.jsp" %>
        <%
          String user=(String) application.getAttribute("uname");
          String s1,s2,s3,s4,s5,s6;
          int i=0;
          try {
            String query="select * from user where username='"+user+"'";
            Statement st=connection.createStatement();
            ResultSet rs=st.executeQuery(query);
            if (rs.next()){
              i=rs.getInt(1);
              s1=rs.getString(4);  // email
              s2=rs.getString(5);  // mobile
              s3=rs.getString(9);  // location
              s4=rs.getString(6);  // dob
              s5=rs.getString(7);  // gender
              s6=rs.getString(10); // status
        %>
        <div class="profile">
          <div>
            <!-- functional image kept, decorative images removed -->
            <img class="avatar" src="images.jsp?value=<%="user"%>&id=<%=i%>" alt="User photo" />
          </div>
          <div class="kv">
            <div class="label">E-Mail</div>
            <div class="value"><%= s1 %></div>

            <div class="label">Mobile</div>
            <div class="value"><%= s2 %></div>

            <div class="label">Location</div>
            <div class="value"><%= s3 %></div>

            <div class="label">Date of Birth</div>
            <div class="value"><%= s4 %></div>

            <div class="label">Gender</div>
            <div class="value"><%= s5 %></div>

            <div class="label">Status</div>
            <div class="value"><%= s6 %></div>
          </div>
        </div>
        <div class="actions">
          <a href="U_Main.jsp" class="btn">Back</a>
        </div>
        <%
            }
            connection.close();
          } catch(Exception e){
            out.println(e);
          }
        %>
      </div>
    </section>
  </main>

  <!-- Footer -->
  <footer>
    <div class="container">© 2025 Immutable Vaccine Supply</div>
  </footer>
</body>
</html>
