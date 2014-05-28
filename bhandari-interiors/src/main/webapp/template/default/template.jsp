<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Bhandari Interiors</title>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/slide.css" />
<link rel="stylesheet" href="css/buttonStyle.css" />
<link rel="stylesheet" href="css/font-awesome.min.css" />
<link rel="stylesheet" href="css/panel.css" />
<link rel="stylesheet" href="css/simple.datagrid.css">
<script src="js/jquery-1.9.0.min.js"></script>
 <script src="js/jquery.slides.min.js"></script>
 <script src="js/simple.datagrid.js"></script>
  <script>
    $(function() {
        $('#slides').slidesjs({
          width: 1000,
          height: 352,
          play: {
            active: true,
            auto: true,
            interval: 4000,
            swap: true
          }
        });
      });
  </script>
</head>
<body>
    <div class="header-back">
        <tiles:insertAttribute name="header" />
        <!-- <div class="content"> -->
            <%-- <tiles:insertAttribute name="menu" /> --%>
            <tiles:insertAttribute name="body" />
        <!-- </div> -->
        <tiles:insertAttribute name="footer" />
    </div>
</body>
</html>