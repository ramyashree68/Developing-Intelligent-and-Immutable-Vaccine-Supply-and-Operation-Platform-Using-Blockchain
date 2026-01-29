<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>User Register Insert Page</title>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700;800&display=swap" rel="stylesheet">
  <style>
    :root{
      --rust: #954535;          /* top gradient */
      --deep: #0b1220;          /* bottom gradient */
      --card: #0f172a;          /* surfaces */
      --muted: #a7b0c0;         /* secondary text */
      --text: #e5e7eb;          /* primary text */
      --brand: #5eead4;         /* teal */
      --brand-dark: #14b8a6;    /* teal (darker) */
      --accent: #60a5fa;        /* blue */
      --border: rgba(255,255,255,.08);
      --radius: 18px;
      --maxw: 1100px;
    }

    *{box-sizing:border-box;margin:0;padding:0}
    body{
      font-family: Inter, system-ui, -apple-system, Segoe UI, Roboto, Arial;
      background: linear-gradient(180deg, var(--rust) 0%, var(--deep) 100%);
      color: var(--text);
      line-height: 1.6;
    }
    a{color:inherit;text-decoration:none}
    .container{max-width:var(--maxw);margin:0 auto;padding:22px}

    /* Navbar (matches sample) */
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
      font-size: clamp(22px, 2.6vw, 30px);
      font-weight:800; margin:0 0 6px;
      background: linear-gradient(135deg, var(--text), #cbd5e1);
      -webkit-background-clip: text; background-clip: text; color: transparent;
    }
    .hero p{color:var(--muted);margin:0}

    /* Card */
    .card{
      background: rgba(12,12,30,.6);
      border:1px solid rgba(255,255,255,.06);
      border-radius: var(--radius);
      box-shadow: 0 10px 30px rgba(2,6,23,.4);
      padding: 22px;
    }

    /* Map old class names to modern palette for JSP outputs */
    .style2{ color:#f43f5e; }   /* error/status text */
    .style3{ color:#22d3ee; }   /* success text */

    .actions{
      display:flex;gap:10px;flex-wrap:wrap;margin-top:14px;justify-content:flex-end
    }
    .btn{
      display:inline-flex;align-items:center;justify-content:center;
      padding:10px 16px;border-radius:12px;font-weight:700;cursor:pointer;border:none;
      transition:transform .12s ease;
      background:linear-gradient(135deg,var(--brand),var(--accent));
      color:#0b1220;
    }
    .btn:hover{transform:translateY(-1px)}

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
        <li><a class="navlink" href="index.html">Home</a></li>
        <li><a class="navlink" href="A_Login.jsp">Admin</a></li>
        <li><a class="navlink active" href="U_Login.jsp">User</a></li>
      </ul>
    </div>
  </header>

  <!-- Content -->
 <center> <main class="container">
    <section class="hero" aria-labelledby="page-title">
      <h1 id="page-title">User Register Status</h1>
	            <%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>


<%@ page import="java.util.Date" %>

 <%@ include file="connect.jsp" %>
 <%@ page import ="java.security.Key" %>
 <%@ page import ="javax.crypto.Cipher" %> 
 <%@ page import ="java.math.BigInteger" %>
 <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
 <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
 <%@ page import ="java.security.MessageDigest,java.security.DigestInputStream" %>
 <%@ page import ="java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.io.BufferedInputStream" %>


<%
					
  try 
  {
					ServletContext context = getServletContext();
					String dirName =context.getRealPath("Gallery/");
					String paramname=null;
					String image=null;
					String uname=null;     
    				String pass=null;	
					String email=null;
					String mno=null;
					String gen=null;
					String dateOfBirth=null;
					String addr=null;
					String cont=null;
					String state=null;
					String loc=null;
					String lat=null;
					String lon=null;
					FileInputStream fs=null;
					File file1 = null;	
					
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB
						Enumeration params = multi.getParameterNames();
						
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							if(paramname.equalsIgnoreCase("name"))
							{
								uname=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("pwd"))
							{
								pass=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("email"))
							{
								email=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("mob"))
							{
								mno=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("dob"))
							{
								dateOfBirth=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("gen"))
							{
								gen=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("add"))
							{
								addr=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("loc"))
							{
								loc=multi.getParameter(paramname);
							}
							
						
						}
							
						int f = 0;
						Enumeration files = multi.getFileNames();	
						
						while (files.hasMoreElements()) 
						{
							paramname = (String) files.nextElement();
														
							if(paramname != null)
							{
								f = 1;
								image = multi.getFilesystemName(paramname);
								String fPath = context.getRealPath("Gallery\\"+image);
								file1 = new File(fPath);
								fs = new FileInputStream(file1);
							}		
						}
				
						
						String str = "select * from user where username='"+uname+"' ";
						Statement st = connection.createStatement();
						ResultSet rs = st.executeQuery(str);
						
						if(rs.next())
						{
						%>
						<h3 class="style2">User Name Already Exist</h3>
						<p align="center"><a href="U_Register.jsp">Back</a></p><%
						
						}
			 			else
						{
					   
						PreparedStatement ps=connection.prepareStatement("insert into user(username,password,email,mobile,dob,gender,address,location,status,image) values(?,?,?,?,?,?,?,?,?,?)");
						ps.setString(1,uname);
						ps.setString(2,pass);
						ps.setString(3,email);	
						ps.setString(4,mno);
						ps.setString(5,dateOfBirth);
						ps.setString(6,gen);
						ps.setString(7,addr);
						ps.setString(8,loc);
						
						ps.setString(9,"Waiting");
						ps.setBinaryStream(10, (InputStream)fs, (int)(file1.length()));
							
						if(f == 0)
							ps.setObject(13,null);
					
						
						int x=ps.executeUpdate();
					
					%>
					<h3 class="style3">User Registered Successfully</h3>
					<p align="center"><a href="U_Login.jsp">Login..</a> <a href="U_Register.jsp">Back</a></p><%
						}
						}
					catch (Exception e) 
					{
						out.println(e.getMessage());
					}
				%></center>
          <div class="clr"></div>
        </div>
        <p class="pages">&nbsp;</p>
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
