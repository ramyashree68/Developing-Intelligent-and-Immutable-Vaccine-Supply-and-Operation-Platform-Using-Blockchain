<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Admin — View Datasets by Blockchain | Immutable Vaccine Supply</title>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap" rel="stylesheet">
  <style>
    :root{
      --bg: #9E4638;
      --card: rgba(12,12,30,.6);
      --muted: #a7b0c0;
      --text: #e5e7eb;
      --brand: #5eead4;
      --accent: #60a5fa;
      --maxw: 1200px;
      --radius: 18px;
      --border: rgba(255,255,255,.10);
      --row: rgba(255,255,255,.04);
    }
    *{box-sizing:border-box}
    html,body{margin:0;padding:0}
    body{
      font-family: Inter, system-ui, -apple-system, Segoe UI, Roboto, "Helvetica Neue", Arial;
      background: linear-gradient(180deg,#954535 0%, #0b1220 100%);
      color: var(--text);
      line-height: 1.6;
      min-height:100vh; display:flex; flex-direction:column;
    }
    a{color:inherit;text-decoration:none}
    .container{max-width:var(--maxw);margin:0 auto;padding:24px}
    header{position:sticky;top:0;z-index:50;backdrop-filter:saturate(180%) blur(10px);background:rgba(12,12,30,.6);border-bottom:1px solid rgba(255,255,255,.06)}
    .nav{display:flex;align-items:center;justify-content:space-between;gap:16px;padding:14px 24px}
    .brand{display:flex;align-items:center;gap:12px;font-weight:700}
    .brand .dot{width:12px;height:12px;border-radius:50%;background:linear-gradient(135deg,var(--brand),var(--accent));box-shadow:0 0 24px rgba(94,234,212,.6)}
    .nav ul{display:flex;gap:8px;list-style:none;margin:0;padding:0}
    .nav a.navlink{padding:10px 14px;border-radius:12px;color:var(--text);font-weight:600;letter-spacing:.2px;transition:all .18s ease}
    .nav a.navlink:hover{background:rgba(255,255,255,.06)}
    .nav a.active{background:linear-gradient(135deg, rgba(94,234,212,.15), rgba(96,165,250,.15));outline:1px solid rgba(94,234,212,.35)}
    .pagehead{padding:28px 24px 0}
    .pagehead h1{margin:0;font-size: clamp(22px, 2.6vw, 30px);background:linear-gradient(135deg,var(--text),#cbd5e1);-webkit-background-clip:text;color:transparent}
    .pagehead p{margin:6px 0 0;color:var(--muted)}
    .card{background:var(--card);border:1px solid var(--border);border-radius:var(--radius);padding:20px;margin-top:18px;box-shadow:0 12px 32px rgba(2,6,23,.45)}
    table{width:100%;border-collapse:separate;border-spacing:0;min-width:920px}
    thead th{position:sticky;top:0;background:rgba(12,12,30,.75);text-align:left;padding:12px 14px;font-weight:700;color:#dbeafe;border-bottom:1px solid var(--border)}
    tbody td{padding:12px 14px;border-bottom:1px solid var(--border);vertical-align:middle}
    tbody tr:nth-child(even){background:var(--row)}
    tbody tr:hover{background:rgba(255,255,255,.06)}
    .style1 { color: #FF0000; font-weight: bold; }
    .style3 {color: #FFFFFF}
  </style>
</head>
<body>
  <header>
    <nav class="nav container">
      <div class="brand">
        <span class="dot"></span>
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
     <center> <h1>View All Datasets by Blockchain</h1>
      <p>Each card below represents a distinct blockchain hash grouping.</p></center>
    </section>

    <p align="right"><a href="A_Main.jsp">Back</a></p>
    <%@ include file="connect.jsp" %>
    <%@ page import="java.io.*,java.util.*,java.util.Date,com.oreilly.servlet.*,java.text.SimpleDateFormat,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key,org.bouncycastle.util.encoders.Base64,java.sql.*,java.util.Random,java.security.NoSuchAlgorithmException,java.security.PublicKey,javax.crypto.NoSuchPaddingException" %>

    <%
    String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,hsign,s111;
    try {
      String str1 = "select distinct(hc) from datasets";
      Statement st1 = connection.createStatement();
      ResultSet rs1 = st1.executeQuery(str1);
      while(rs1.next()) {
        hsign = rs1.getString(1);
        String query="select * from datasets where hc = '"+hsign+"'"; 
        Statement st=connection.createStatement();
        ResultSet rs=st.executeQuery(query);
        int count=1;
        while (rs.next()) {
          if(count==1) {
            count++;
            s111=rs.getString(5);
    %>
    <!-- Titles directly above the table -->
    <div style="text-align:center; margin-bottom:5px;">
      <div class="pagehead">Supplied Vaccine BlockChain--->:: <%=s111%></div>
      <div class="pagehead">Supplied Vaccine Hash Code --->:: <%=hsign%></div>
    </div>

    <!-- Scrollable table -->
    <div style="overflow:auto; max-height:500px;">
      <table width="913" border="1" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td bgcolor="#9E4638" style="color: #ffff;"><div align="center"><em><strong>Vid</strong></em></div></td>
          <td bgcolor="#9E4638" style="color: #ffff;"><div align="center"><em><strong>from_location</strong></em></div></td> 
          <td bgcolor="#9E4638" style="color: #ffff;"><div align="center"><em><strong>supply_date</strong></em></div></td> 
          <td bgcolor="#9E4638" style="color: #ffff;"><div align="center"><em><strong>vaccine_name</strong></em></div></td> 
          <td bgcolor="#9E4638" style="color: #ffff;"><div align="center"><em><strong>total_vaccinations</strong></em></div></td> 
          <td bgcolor="#9E4638" style="color: #ffff;"><div align="center"><em><strong>Logistics</strong></em></div></td> 
          <td bgcolor="#9E4638" style="color: #ffff;"><div align="center"><em><strong>vaccine_date</strong></em></div></td> 
          <td bgcolor="#9E4638" style="color: #ffff;"><div align="center"><em><strong>street_name</strong></em></div></td> 
          <td bgcolor="#9E4638" style="color: #ffff;"><div align="center"><em><strong>city</strong></em></div></td>
          <td bgcolor="#9E4638" style="color: #ffff;"><div align="center"><em><strong>Hash Code</strong></em></div></td>
        </tr>
    <%
          }
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
          <td align="center"><strong><%=s1%></strong></td>
          <td align="center"><strong><%=s2%></strong></td>
          <td align="center"><strong><%=s3%></strong></td>
          <td align="center"><strong><%=s4%></strong></td>
          <td align="center"><strong><%=s5%></strong></td>
          <td align="center"><strong><%=s6%></strong></td>
          <td align="center"><strong><%=s7%></strong></td>
          <td align="center"><strong><%=s8%></strong></td>
          <td align="center"><strong><%=s9%></strong></td>
          <td align="center"><strong><%=s10%></strong></td>
        </tr>
    <%
        } // inner while
    %>
      </table>
    </div>
    <%
      } // outer while
    } catch(Exception e) {
      out.println(e.getMessage());
    }
    %>
    <p align="right"><a href="A_Main.jsp">Back</a></p>
  </main>
</body>
</html>
