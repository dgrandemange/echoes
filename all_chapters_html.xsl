<?xml version="1.0" encoding="ISO-8859-1"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:output method="html"/>

   <xsl:template match="/AVAILABLE_CHAPTERS">
      <HTML>
         <HEAD>
            <meta http-equiv="content-type" content="text/html;charset=ISO-8859-1" />

            <TITLE>ECHOES : un projet de traduction de Xenosaga Pied Piper</TITLE>
         </HEAD>

         <BODY>
      		<xsl:element name="A">
      		<xsl:attribute name="name">#HAUT</xsl:attribute>
      		</xsl:element>
            <P align="left">
		   <IMG src="res/img/echoes_project.jpg" alt="ECHOES : un projet de traduction de Xenosaga Pied Piper"/>
            </P>

 		<FONT FACE="Courrier" SIZE="3"><u><xsl:text>Index des chapitres</xsl:text></u></FONT>
		<BR /><BR />
		<xsl:apply-templates select="./AVAIL_CHAPTER" mode="table"/>
		<BR />
		<xsl:apply-templates select="./AVAIL_CHAPTER" />

            	<TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0" WIDTH="100%">
               	<TR>
                  <TD ALIGN="center">
			<xsl:element name="A">
      			<xsl:attribute name="href"><xsl:text>#HAUT</xsl:text></xsl:attribute><xsl:text>Index</xsl:text>
      			</xsl:element>
			<xsl:text> - </xsl:text>
			<xsl:element name="A">
      			<xsl:attribute name="href"><xsl:text>index.xml</xsl:text></xsl:attribute><xsl:text>Accueil</xsl:text>
      			</xsl:element>
                  </TD>
               	</TR>
            	</TABLE>
	 </BODY>
      </HTML>
   </xsl:template>

   <xsl:template match="/AVAILABLE_CHAPTERS/AVAIL_CHAPTER" mode="table">
      <xsl:variable name="currentChapter" select="concat(concat('chapter',@id),'.xml')" />

        <xsl:apply-templates select="document($currentChapter)" mode="table"/>
        
   </xsl:template>

   <xsl:template match="/AVAILABLE_CHAPTERS/AVAIL_CHAPTER">
      <xsl:variable name="currentChapter" select="concat(concat('chapter',@id),'.xml')" />

        <xsl:apply-templates select="document($currentChapter)" />
	<BR/>
        
   </xsl:template>

   <xsl:template match="CHAPTER" mode="table">      
	<FONT FACE="Courrier" SIZE="-1">
	<xsl:element name="A">
      <xsl:attribute name="href">#<xsl:value-of select="@no"/></xsl:attribute>
	<xsl:value-of select="@no" /> : <xsl:value-of select="@title" />
      </xsl:element><BR />
	</FONT>
   </xsl:template>

   <xsl:template match="CHAPTER">
  
      <xsl:element name="A">
      <xsl:attribute name="name">#<xsl:value-of select="@no"/></xsl:attribute>
      </xsl:element>

      <xsl:processing-instruction name="cocoon-format">type="text/html"</xsl:processing-instruction>

            <TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0" WIDTH="100%">
               <TR>
                  <TD ALIGN="left">
                     <FONT FACE="Courrier" SIZE="-1">
                        <U>Pied Piper Chapitre 
                        <xsl:value-of select="@no" />

                        : 
                        <xsl:value-of select="@title" />
                        </U>
                     </FONT>
                  </TD>
               </TR>
            </TABLE>

            <BR />

            <TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0" WIDTH="100%">
               <TR>
                  <TD ALIGN="left">
                     <xsl:apply-templates select="./*" />
                  </TD>
               </TR>
            </TABLE>

   </xsl:template>

   <xsl:template match="COMMENT">
 	<TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0" WIDTH="100%">
         <TR>
            <TD>
		<FONT FACE="Courrier" SIZE="-1">
              <I>
                <xsl:value-of select="." />
              </I>
		</FONT>
	    </TD>

         </TR>
      </TABLE>
   </xsl:template>

   <xsl:template match="DIALOG">
      <TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0" WIDTH="100%">
         <TR>
            <TD ALIGN="left" VALIGN="top" width="10%">
		<FONT FACE="Courrier" SIZE="-1">
            <xsl:value-of select="@character" />

            :</FONT></TD>

            <TD ALIGN="left" VALIGN="top">
		<FONT FACE="Courrier" SIZE="-1">
		<xsl:apply-templates/>
		</FONT>
            </TD>

         </TR>
      </TABLE>
   </xsl:template>

   <xsl:template match="IMAGE">
   </xsl:template>

   <xsl:template match="CR">
	<xsl:element name="BR"/>
	<xsl:element name="BR"/>
   </xsl:template>
</xsl:stylesheet>

