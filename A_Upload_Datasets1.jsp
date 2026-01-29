<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Datasets Uploaded Details — Immutable Vaccine Supply</title>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700;800&display=swap" rel="stylesheet">
  <style>
    :root{
      --bg: #9E4638;          /* brand brown */
      --page: #0b1220;        /* page gradient end */
      --card: rgba(12,12,30,.6);
      --muted: #a7b0c0;
      --text: #e5e7eb;
      --brand: #5eead4;       /* teal */
      --brand-dark: #14b8a6;
      --accent: #60a5fa;      /* blue */
      --maxw: 1100px;
      --radius: 18px;
      --border: rgba(255,255,255,.12);
      --row: rgba(255,255,255,.04);
      --focus: rgba(94,234,212,.6);
    }

    *{box-sizing:border-box}
    html,body{margin:0;padding:0}
    body{
      font-family: Inter, system-ui, -apple-system, Segoe UI, Roboto, "Helvetica Neue", Arial, "Noto Sans", "Apple Color Emoji", "Segoe UI Emoji";
      background: linear-gradient(180deg, var(--bg) 0%, var(--page) 100%);
      color: var(--text);
      line-height: 1.6;
      min-height: 100vh;
    }
    a{color:inherit;text-decoration:none}

    /* Scrollbar */
    ::-webkit-scrollbar{width:10px}
    ::-webkit-scrollbar-track{background:#0b1220}
    ::-webkit-scrollbar-thumb{background:linear-gradient(var(--brand), var(--accent));border-radius:10px}
    ::-webkit-scrollbar-thumb:hover{background:linear-gradient(var(--brand-dark), var(--accent))}

    /* Layout */
    .container{max-width:var(--maxw);margin:0 auto;padding:24px}

    /* Header / Nav */
    header{
      position:sticky;top:0;z-index:50;
      background: var(--bg);
      border-bottom: 2px solid var(--brand-dark);
      box-shadow: 0 6px 18px rgba(0,0,0,.35);
    }
    .nav{display:flex;align-items:center;justify-content:space-between;gap:16px;padding:14px 24px}
    .brand{display:flex;align-items:center;gap:12px;font-weight:800}
    .brand .dot{width:12px;height:12px;border-radius:50%;background:linear-gradient(135deg,var(--brand),var(--accent));box-shadow:0 0 24px rgba(94,234,212,.6)}
    .brand .title{letter-spacing:.2px;color:#fff;white-space:nowrap}
    .nav ul{display:flex;gap:8px;list-style:none;margin:0;padding:0}
    .nav a.navlink{
      display:inline-block;padding:10px 14px;border-radius:12px;
      color:#fff;font-weight:600;letter-spacing:.2px;transition:all .18s ease;
    }
    .nav a.navlink:hover{background:rgba(255,255,255,.12)}
    .nav a.active{background:linear-gradient(135deg, rgba(94,234,212,.25), rgba(96,165,250,.25));outline:1px solid rgba(94,234,212,.35)}

    /* Hero */
    .hero{padding:44px 24px 10px}
    .hero h1{
      margin:0;
      font-size: clamp(26px, 2.8vw, 38px);
      line-height:1.2;font-weight:800;
      background: linear-gradient(135deg, var(--text), #cbd5e1);
      -webkit-background-clip:text; background-clip:text; color:transparent;
      text-align:center;
    }
    .hero p{color:var(--muted);margin:10px 0 0;text-align:center}

    /* Card */
    .card{
      background: var(--card);
      border:1px solid var(--border);
      border-radius: var(--radius);
      padding: 22px; margin-top:18px;
      box-shadow: 0 10px 30px rgba(2,6,23,.4);
    }

    /* Centered content block */
    .center-wrap{
      display:flex;
      justify-content:center;
      align-items:center;
      padding: 10px 24px 32px;
    }
    .content-col{width:100%;max-width:900px}

    /* Table */
    .table{width:100%;border-collapse:separate;border-spacing:0;margin-top:14px}
    .table th,.table td{padding:12px 14px;text-align:left}
    .table thead th{background:rgba(255,255,255,.06);border-bottom:1px solid var(--border)}
    .table tbody tr:nth-child(even){background:var(--row)}
    .pill{display:inline-flex;align-items:center;gap:8px;padding:6px 10px;border-radius:999px;font-size:12px;background:rgba(255,255,255,.08);outline:1px solid rgba(94,234,212,.35)}

    /* Footer */
    footer{padding:36px 24px;text-align:center;border-top:1px solid var(--border);color:var(--muted)}
  </style>
</head>
<body>
  <header>
    <nav class="nav container" aria-label="Primary">
      <div class="brand">
        <span class="dot" aria-hidden="true"></span>
        <a href="A_Main.jsp" class="title">Immutable Vaccine Supply</a>
      </div>
      <ul>
        <li><a class="navlink" href="index.html">Home</a></li>
        <li><a class="navlink active" href="#">Datasets</a></li>
        <li><a class="navlink" href="A_Login.jsp">Admin</a></li>
        <li><a class="navlink" href="U_Login.jsp">User</a></li>
      </ul>
    </nav>
  </header>

  <main>
    <section class="hero container">
      <h1>Datasets Uploaded Details !!!</h1>
      <p>Developing Intelligent and Immutable Vaccine Supply and Operation Platform using Blockchain and Artificial Intelligence.</p>
    </section>
		  
		  
		  <%@page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%@page
	import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page
	import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page
	import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page
	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
 
 
    <%@ page import ="java.io.FileNotFoundException" %>  
    <%@ page import ="java.io.IOException" %>  
    <%@ page import ="java.util.Iterator" %>  
    <%@ page import ="java.util.ArrayList" %> 
    <%@ page import="org.apache.poi.xssf.usermodel.*" %>
    <%@ page import ="org.apache.poi.hssf.usermodel.HSSFCell" %>  
    <%@ page import ="org.apache.poi.hssf.usermodel.HSSFRow" %>  
    <%@ page import ="org.apache.poi.hssf.usermodel.HSSFSheet" %>  
    <%@ page import ="org.apache.poi.hssf.usermodel.HSSFWorkbook" %>  
    <%@ page import ="org.apache.poi.poifs.filesystem.POIFSFileSystem" %>
    <%@ page import="org.apache.poi.ss.usermodel.Cell" %>
    <%@ page import ="org.apache.poi.ss.usermodel.Row"%>
    <%@ page import="org.apache.poi.ss.usermodel.Sheet" %>
    <%@ page import="org.apache.poi.ss.usermodel.Workbook" %>
    <%@ page import ="org.apache.poi.xssf.usermodel.XSSFWorkbook" %>
    <%@ page import="com.oreilly.servlet.MultipartRequest" %>
	
	
 
	
    <%
    try{
	
   	    String fname=request.getParameter("fname");
	
       						
		String sql="delete from datasets";
		Statement stmt = connection.createStatement();
		stmt.executeUpdate(sql);	
		
	   String vid,fl,sd,vn,tv,log,vd,sn,ci;
	   
       connection.setAutoCommit(false);
       PreparedStatement pstm = null ;
       FileInputStream input = new FileInputStream(getServletContext().getRealPath("/")+"//"+fname);
	  
	  
       POIFSFileSystem fs = new POIFSFileSystem(input); 
       HSSFWorkbook wb = new HSSFWorkbook(fs);
       HSSFSheet sheet = wb.getSheetAt(0);
       Row row;
       Statement st=connection.createStatement();
       for(int i=1; i<=sheet.getLastRowNum(); i++){ 
           row = (Row) sheet.getRow(i);  
 
				 if( row.getCell(0)==null) { vid = "0";}  
                 else vid = row.getCell(0).toString();   
				  
                  if( row.getCell(1)==null) { fl = "0";}  
                  else fl = row.getCell(1).toString();   
				  
				  if( row.getCell(2)==null) { sd = "0";}
				  else sd = row.getCell(2).toString();
				  
				   if( row.getCell(3)==null) { vn = "0";}  
                  else vn= row.getCell(3).toString(); 
				    
				  if( row.getCell(4)==null) { tv = "0";}  
                  else tv= row.getCell(4).toString(); 
				  
				  if( row.getCell(5)==null) { log = "0";}  
                  else log= row.getCell(5).toString(); 
				  
				  if( row.getCell(6)==null) { vd = "0";}  
                  else vd= row.getCell(6).toString(); 
				  
				  if( row.getCell(7)==null) { sn = "0";}  
                  else sn = row.getCell(7).toString(); 
				  
				  if( row.getCell(8)==null) { ci = "0";}  
                  else ci = row.getCell(8).toString(); 
				  
				  
				 			  
				    String filename="filename.txt";
      				PrintStream p = new PrintStream(new FileOutputStream(filename));
					p.print(new String(vn));
			
					MessageDigest md = MessageDigest.getInstance("SHA1");
					FileInputStream fis11 = new FileInputStream(filename);
					DigestInputStream dis1 = new DigestInputStream(fis11, md);
					BufferedInputStream bis1 = new BufferedInputStream(dis1);
					//Read the bis so SHA1 is auto calculated at dis
					while (true) {
						int b1 = bis1.read();
						if (b1 == -1)
							break;
					}
 
					BigInteger bi1 = new BigInteger(md.digest());
					String spl1 = bi1.toString();
					String h1 = bi1.toString(16);
					
				
								
			Statement stss=connection.createStatement();
stss.executeUpdate("insert into datasets(vid,fl,sd,vn,tv,log,vd,sn,ci,hc)values ('"+vid+"','"+fl+"','"+sd+"','"+vn+"','"+tv+"','"+log+"','"+vd+"','"+sn+"','"+ci+"','"+h1+"')"); 				
       }
       connection.commit();
       pstm.close();
       connection.close();
       input.close();
 
   }catch(Exception e){
       
   }
 
 
%>
		 <center> <h2>Datasets Imported Successfully !!!</h2></center><br />
		 <br />
		
          <div class="clr"></div>
        <center> <div><a href="A_Main.jsp" class="style63">Back</a></div></center>
        </div>
        <div class="article">
          <h2 class="style31">&nbsp;</h2>
        </div>
      </div>
     
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
