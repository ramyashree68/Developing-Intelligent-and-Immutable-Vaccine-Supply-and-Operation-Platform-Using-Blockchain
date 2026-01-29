<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <title>Access Immutable Vaccine Supply By Blockchain Hashcode</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

  <style type="text/css">
    :root{
      --rust:#954535;
      --deep:#0b1220;
      --card:#0f172a;
      --muted:#a7b0c0;
      --text:#e5e7eb;
      --brand:#5eead4;    /* teal */
      --accent:#60a5fa;   /* blue */
      --border:rgba(255,255,255,.08);
      --radius:18px;
      --maxw:1100px;
      --input:rgba(255,255,255,.04);
      --shadow:0 12px 30px rgba(2,6,23,.35);
    }

    html,body{height:100%}
    *{box-sizing:border-box;margin:0;padding:0}
    body{
      font-family: Inter, system-ui, -apple-system, Segoe UI, Roboto, Arial;
      background: linear-gradient(180deg, var(--rust) 0%, var(--deep) 100%);
      color: var(--text);
      line-height: 1.6;
      -webkit-font-smoothing: antialiased; 
      -moz-osx-font-smoothing: grayscale;
    }
    a{color:inherit;text-decoration:none}
    .container{max-width:var(--maxw);margin:0 auto;padding:22px}

    /* Navbar */
    header{
      position: sticky; top: 0; z-index: 50;
      backdrop-filter: saturate(180%) blur(10px);
      background: rgba(12,12,30,.6);
      border-bottom: 1px solid rgba(255,255,255,.06);
    }
    .nav{display:flex;align-items:center;justify-content:space-between;gap:16px;padding:14px 0}
    .brand{display:flex;align-items:center;gap:12px;font-weight:800;letter-spacing:.2px}
    .brand .dot{
      width:12px;height:12px;border-radius:50%;
      background:linear-gradient(135deg,var(--brand),var(--accent));
      box-shadow:0 0 24px rgba(94,234,212,.6);
    }
    .brand .title{font-size:16px}
    .nav ul{display:flex;gap:8px;list-style:none}
    .nav a.navlink{
      padding:10px 14px;border-radius:12px;font-weight:700;letter-spacing:.2px;
      transition:all .18s ease;color:var(--text)
    }
    .nav a.navlink:hover{background:rgba(255,255,255,.06)}
    .nav a.active{
      background:linear-gradient(135deg, rgba(94,234,212,.15), rgba(96,165,250,.15));
      outline:1px solid rgba(94,234,212,.35);
    }

    /* Page header */
    .hero{padding:28px 0 8px}
    .hero h1{
      font-size: clamp(20px, 2.4vw, 26px);
      font-weight:800; margin:0 0 6px;
      background: linear-gradient(135deg, var(--text), #cbd5e1);
      -webkit-background-clip: text; background-clip: text; color: transparent;
    }
    .hero p{color:var(--muted)}

    /* Card / form container */
    .wrap{display:flex;justify-content:center}
    .card{
      width:100%; max-width:640px;
      background: rgba(12,12,30,.6);
      border:1px solid rgba(255,255,255,.06);
      border-radius: var(--radius);
      box-shadow: var(--shadow);
      padding: 22px;
    }
    .card h2{font-size:clamp(18px,2.2vw,22px);font-weight:800;margin-bottom:8px}
    .subtitle{color:var(--muted);margin-bottom:12px}

    .form-row{display:flex;flex-direction:column;gap:8px;margin-bottom:14px}
    label{font-weight:700}

    /* Styled select */
    select{
      width:100%;
      padding:12px 14px;
      border-radius:12px;
      border:1px solid var(--border);
      background: var(--input);
      color:var(--text);
      outline: none;
      appearance: none;
      -webkit-appearance: none;
      -moz-appearance: none;
      transition: border-color .15s ease, box-shadow .15s ease;
    }
    select:focus{
      border-color: rgba(94,234,212,.5);
      box-shadow: 0 0 0 3px rgba(94,234,212,.2);
    }
    select option{
      background-color: var(--card);
      color: var(--text);
    }
    select option:checked,
    select option:hover{
      background-color: var(--brand);
      color: #000;
    }

    .actions{display:flex;gap:10px;flex-wrap:wrap;margin-top:6px}
    .btn{
      display:inline-flex;align-items:center;justify-content:center;
      padding:10px 16px;border-radius:12px;font-weight:800;cursor:pointer;border:none;
      transition:transform .12s ease, background .2s ease, outline-color .2s ease;
    }
    .btn.primary{
      background: rgba(12,12,30,.6);
      color:#fff;
      outline:1px solid rgba(255,255,255,.14);
    }
    .btn.primary:hover{transform:translateY(-1px)}
    .btn.secondary{
      background: transparent; color: var(--text);
      outline:1px solid rgba(255,255,255,.14);
    }
    .btn.secondary:hover{transform:translateY(-1px)}

    footer{
      margin-top:28px;padding:22px 0;text-align:center;
      color: var(--muted);border-top:1px solid rgba(255,255,255,.06);
    }
    @media (max-width: 720px){
      .brand .title{display:none}
    }
  </style>
</head>
<body>

  <!-- Navbar -->
  <header>
    <div class="container nav" aria-label="Primary">
      <div class="brand">
        <span class="dot" aria-hidden="true"></span>
        <a href="index.html" class="title">Immutable Vaccine Supply</a>
      </div>
      <ul>
        <li><a class="navlink" href="U_Main.jsp">Home</a></li>
        <li><a class="navlink active" href="U_Find_Immutable_Vaccine_Supply_By_Hashcode.jsp">Access by Hashcode</a></li>
        <li><a class="navlink" href="U_Login.jsp">Logout</a></li>
      </ul>
    </div>
  </header>

  <!-- Content -->
  <main class="container">
    <section class="hero" aria-labelledby="page-title">
      <h1 id="page-title">Access Immutable Vaccine Supply By Blockchain Hashcode</h1>
      <p>Choose a vaccine name to fetch immutable supply details.</p>
    </section>

    <div class="wrap">
      <section class="card" aria-label="Access form">
        <h2>Select Vaccine</h2>
        <p class="subtitle">Pick a vaccine name and submit to view details verified by hashcode.</p>

        <!-- Your original form & JSP logic preserved -->
        <form name="s" action="U_Find_Immutable_Vaccine_Supply_By_Hashcode1.jsp" method="post">
          <div class="form-row">
            <label for="vtype">Select Vaccine Name</label>
            <select id="vtype" name="Type">
              <option>---Select---</option>
              <%
                try {
                  String s1;
                  String query="select distinct(vn) from datasets";
                  Statement st=connection.createStatement();
                  ResultSet rs=st.executeQuery(query);
                  while ( rs.next() ) {
                    s1=rs.getString(1);
              %>
                    <option><%= s1 %></option>
              <%
                  }
                  connection.close();
                } catch(Exception e) {
                  out.println(e.getMessage());
                }
              %>
            </select>
          </div>
          <div class="actions">
            <input type="submit" value="Find Immutable Vaccine Supply Details" class="btn primary" />
            <a href="U_Main.jsp" class="btn secondary">← Back</a>
          </div>
        </form>
      </section>
    </div>
  </main>

  <footer>
    © 2025 Immutable Vaccine Supply
  </footer>
</body>
</html>
