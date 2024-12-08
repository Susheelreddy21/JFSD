<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Candidate Registration Success</title>
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Sidebar Navigation */
        .navbar {
            display: flex;
            flex-direction: column; /* Stack items vertically */
            align-items: flex-start;
            width: 60px; /* Collapsed width */
            background-color: navy;
            padding: 10px;
            height: 100vh; /* Full viewport height */
            position: fixed; /* Keep sidebar fixed */
            top: 0;
            left: 0;
            transition: width 0.3s ease; /* Smooth transition for width */
            overflow: hidden; /* Hide content when collapsed */
        }

        .navbar:hover {
            width: 200px; /* Expanded width on hover */
        }

        .navbar a {
            color: white;
            text-decoration: none;
            padding: 14px 20px;
            border-radius: 5px;
            width: 100%;
            box-sizing: border-box;
            border-bottom: 1px solid white; /* Adds line between elements */
            white-space: nowrap; /* Prevent text wrapping */
            overflow: hidden; /* Hide overflowing text in collapsed state */
            text-overflow: ellipsis; /* Show ellipsis for truncated text */
            opacity: 0; /* Initially hidden links */
            transform: translateX(-20px); /* Offset for smooth animation */
            transition: opacity 0.3s ease, transform 0.3s ease; /* Smooth fade-in effect */
        }

        .navbar:hover a {
            opacity: 1; /* Fully visible links on hover */
            transform: translateX(0); /* Reset any offset */
        }

        .navbar a:hover {
            background-color: darkblue;
        }

        /* Main content */
        .content {
            margin-left: 60px; /* Shift main content beside the sidebar */
            padding: 20px;
            transition: margin-left 0.3s ease;
        }

        .navbar:hover + .content {
            margin-left: 200px; /* Adjust main content when sidebar expands */
        }

        h1 {
            color: #333;
            font-size: 28px;
        }

        p {
            font-size: 16px;
            color: #555;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <!-- Sidebar -->
     <h2 align="center">Election Monitoring System To Inspire Upcoming Voters</h2>
   <div class="navbar">
         <a href="/candidatehome">Home</a>
          <a href="/register">candidate Register</a>
     
        <a href="/adminlogin">Logout</a>
    </div>

    <!-- Main content -->
    <div class="content">
        <h1>Registration Successful!</h1>
        <p>Your information has been successfully submitted.</p>
            <a href="/candidatehome">Home</a>
    </div>

</body>
</html>
