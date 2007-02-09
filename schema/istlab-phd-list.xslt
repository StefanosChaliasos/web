<?xml version="1.0"?>
<!--
 -
 - Transform the ISTLab data into HTML web pages
 -
 - (C) Copyright 2004 Diomidis Spinellis
 -
 - $Id$
 -
 -->

<!-- Global definitions {{{1 -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:param name="completed"/>
	<xsl:output method="html" />

	<xsl:template match="istlab">
		<html>
			<head>
				<title>ISTLab - PhD students</title>
				<link href="../images/styles.css" type="text/css" rel="stylesheet" />
				<xsl:comment>Generated by $Id$</xsl:comment>
			</head>
			<body margin-left="0" margin-top="0">
<!-- CSS -->
<style> 
.a {
	border-width: 0;
	border-style: solid;
	border-color: #a0a0a0;
	padding:2px;
	margin:2px;
	width:250px;
	position:relative;
	float: left;
    } 

.b {
	clear:both;
    } 
</style>
<!-- CSS end -->
			<div class="logo"><a href="http://istlab.dmst.aueb.gr/"><img src="../images/istlab-s.jpg" alt="ISTLab" align="middle" border="0" /></a> The Research Center</div>
			<div class="projecttitle">
			ISTLab PhD Students
			</div>
			<xsl:for-each select="current()/member_list/member">
				<xsl:if test="count(current()/phd-info) = 1">
					<xsl:if test="current()/phd-info/@completed = $completed">
					<div class="a" align="center">
					<xsl:if test="count(current()/photo) = 1">
						<a href="../members/{current()/@id}.html"><img src="{current()/photo}" border="0" width="80" height="80"/></a>
					</xsl:if>
					<xsl:if test="count(current()/photo) = 0">
						<a href="../members/{current()/@id}.html"><img src="../images/lamp.png" border="0" width="80" height="80" /></a>
					</xsl:if>
					<br/>
					<a href="../members/{current()/@id}.html"><xsl:value-of select="current()/givenname"/><xsl:text> </xsl:text><xsl:value-of select="current()/surname"/></a>
					</div>
					</xsl:if>
				</xsl:if>
			</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
