<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>View All Datasets</title>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700;800&display=swap" rel="stylesheet">
  <style>
    :root{
      /* Sample palette (matched) */
      --rust: #954535;
      --deep: #0b1220;
      --card: #0f172a;
      --muted: #a7b0c0;
      --text: #e5e7eb;
      --brand: #5eead4;
      --brand-dark: #14b8a6;
      --accent: #60a5fa;
      --border: rgba(255,255,255,.08);
      --radius: 18px;
      --maxw: 1100px;
    }
    *{box-sizing:border-box}
    html,body{margin:0;padding:0}
    body{
      font-family: Inter, system-ui, -apple-system, Segoe UI, Roboto, "Helvetica Neue", Arial;
      background: linear-gradient(180deg, var(--rust) 0%, var(--deep) 100%);
      color: var(--text);
      line-height: 1.6;
    }
    a{color:inherit;text-decoration:none}
    .container{max-width:var(--maxw);margin:0 auto;padding:22px}

    header{
      position: sticky; top: 0; z-index: 50;
      backdrop-filter: saturate(180%) blur(10px);
      background: rgba(12,12,30,.6);
      border-bottom: 1px solid rgba(255,255,255,.06);
    }
    .nav{
      display:flex;align-items:center;justify-content:space-between;gap:16px;
      padding:14px 0;
    }
    .brand{
      display:flex;align-items:center;gap:12px;font-weight:800;letter-spacing:.2px;
    }
    .brand .dot{
      width:12px;height:12px;border-radius:50%;
      background:linear-gradient(135deg,var(--brand),var(--accent));
      box-shadow:0 0 24px rgba(94,234,212,.6);
    }
	.actions{
      display:flex;justify-content:flex-end;margin-top:10px;
    }
    .actions a{
      padding:8px 14px;
      border-radius:10px;
      background:rgba(12,12,30,.6);
      color:#fff;
      font-weight:700;
      text-align:center;
    }
    .brand .title{font-size:16px}

    .nav ul{display:flex;gap:8px;list-style:none;margin:0;padding:0}
    .nav a.navlink{
      display:inline-block;padding:10px 14px;border-radius:12px;
      color:var(--text);font-weight:700;letter-spacing:.2px;
      transition:all .18s ease;
    }
    .nav a.navlink:hover{background:rgba(255,255,255,.06)}
    .nav a.active{
      background:linear-gradient(135deg, rgba(94,234,212,.15), rgba(96,165,250,.15));
      outline:1px solid rgba(94,234,212,.35);
    }
    .nav a:focus-visible{outline:2px solid var(--brand-dark); outline-offset:2px}

    .hero{padding:28px 0 8px}
    .hero h1{
      margin:0;
      font-size: clamp(20px, 2.4vw, 26px);
      font-weight:800; line-height:1.25;
      background: linear-gradient(135deg, var(--text), #cbd5e1);
      -webkit-background-clip: text; background-clip: text; color: transparent;
    }
    .hero p{margin:8px 0 0;color:var(--muted)}

    /* Added scroll styling for table */
    .table-scroll {
      max-height: 500px;  /* adjust height as needed */
      overflow-y: auto;
      overflow-x: auto;
      border: 1px solid rgba(255,255,255,.12);
    }
    table {
      border-collapse: collapse;
      width: 100%;
    }
  </style>
</head>
<body>
  <header>
    <div class="container nav" aria-label="Primary">
      <div class="brand">
        <span class="dot" aria-hidden="true"></span>
        <a href="index.html" class="title">Immutable Vaccine Supply</a>
      </div>
      <ul>
        <li><a class="navlink" href="index.html">Home</a></li>
        <li><a class="navlink active" href="A_Login.jsp">Admin</a></li>
        <li><a class="navlink" href="U_Login.jsp">User</a></li>
      </ul>
    </div>
  </header>

  <main class="container">
    <section class="hero" aria-labelledby="page-title">
      <h1 id="page-title">View All Datasets</h1>
     <div class="actions">
        <a href="A_Main.jsp">Back</a>
      </div>
      <div class="table-scroll"><!-- Scroll container start -->
        <table width="913" border="1" align="center"  cellpadding="0" cellspacing="0" >
          <tr>     
            <td width="51" height="37" valign="middle" bgcolor="#954535" style="color: #ffff;"><div align="center"><em><strong>Vid</strong></em></div></td>
            <td width="51" height="37" valign="middle" bgcolor="#954535" style="color: #ffff;"><div align="center"><em><strong>from_location</strong></em></div></td>  
            <td width="51" height="37" valign="middle" bgcolor="#954535" style="color: #ffff;"><div align="center"><em><strong>supply_date</strong></em></div></td> 
            <td width="51" height="37" valign="middle" bgcolor="#954535" style="color: #ffff;"><div align="center"><em><strong>vaccine_name</strong></em></div></td> 
            <td width="51" height="37" valign="middle" bgcolor="#954535" style="color: #ffff;"><div align="center"><em><strong>total_vaccinations</strong></em></div></td>  
            <td width="51" height="37" valign="middle" bgcolor="#954535" style="color: #ffff;"><div align="center"><em><strong>Logistics</strong></em></div></td> 
            <td width="51" height="37" valign="middle" bgcolor="#954535" style="color: #ffff;"><div align="center"><em><strong>vaccine_date</strong></em></div></td>  
            <td width="51" height="37" valign="middle" bgcolor="#954535" style="color: #ffff;"><div align="center"><em><strong>street_name</strong></em></div></td> 
            <td width="51" height="37" valign="middle" bgcolor="#954535" style="color: #ffff;"><div align="center"><em><strong>city</strong></em></div></td>
            <td width="51" height="37" valign="middle" bgcolor="#954535" style="color: #ffff;"><div align="center"><em><strong>Hash Code</strong></em></div></td>
          </tr>
          <%@ include file="connect.jsp" %>
          <%
            String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10;
            int i=0;
            try {
              String query="select * from datasets"; 
              Statement st=connection.createStatement();
              ResultSet rs=st.executeQuery(query);
              while ( rs.next() ) {
                i=rs.getInt(1);
                s1=rs.getString(2);
                s2=rs.getString(3);
                s3=rs.getString(4);
                s4=rs.getString(5);
                s5=rs.getString(6);
                s6=rs.getString(7);
                s7=rs.getString(8);
                s8=rs.getString(9);
                s9=rs.getString(10);
                s10=rs.getString(11);
          %>
          <tr bgcolor="#9E4638">
            <td align="center"><strong><%out.println(s1);%></strong></td>
            <td align="center"><strong><%out.println(s2);%></strong></td>
            <td align="center"><strong><%out.println(s3);%></strong></td>
            <td align="center"><strong><%out.println(s4);%></strong></td>
            <td align="center"><strong><%out.println(s5);%></strong></td>
            <td align="center"><strong><%out.println(s6);%></strong></td>
            <td align="center"><strong><%out.println(s7);%></strong></td>
            <td align="center"><strong><%out.println(s8);%></strong></td>
            <td align="center"><strong><%out.println(s9);%></strong></td>
            <td align="center"><strong><%out.println(s10);%></strong></td>
          </tr>
          <%
              }
              connection.close();
            } catch(Exception e) {
              out.println(e);
            }
          %>
        </table>
      </div><!-- Scroll container end -->

     
    </section>
  </main>

  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</body>
</html>
