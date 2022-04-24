<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:output method="html" />

   <xsl:template match="ECHOES">
      <xsl:processing-instruction name="cocoon-format">type="text/html"</xsl:processing-instruction>

      <HTML>
         <HEAD>
            <meta http-equiv="content-type" content="text/html;charset=ISO-8859-1" />

            <TITLE>ECHOES : un projet de traduction de Xenosaga Pied Piper</TITLE>
         </HEAD>

         <BODY>

            <P align="left">
		   <IMG src="res/img/echoes_project.jpg" alt="ECHOES : un projet de traduction de Xenosaga Pied Piper"/>
            </P>

            <P>
               <FONT FACE="Arial,Helvetica" SIZE="-2">
               		<U>A propos d'ECHOES ...</U>               		
					<LI>Ce projet se veut un echo du projet de traduction US <xsl:element name="A">
      					<xsl:attribute name="href"><xsl:text>http://web.archive.org/web/20160530202208/http://zarathustra.kaisho.org/</xsl:text></xsl:attribute>Zarathustra</xsl:element> du jeu 'Xenosaga : Pied Piper' sorti uniquement au Japon. Merci a Chaoslace, l'initiatrice de ce projet pour son gros travail de traduction, travail sans lequel ce projet-ci n'aurait pu démarrer.</LI>      					
                                        <LI>Je n'ai pas la prétention de fournir ici une traduction exactement fidèle a la fan-trad US, mais j'ai essayé d'y coller dans la mesure de mes connaissances, a la fois de la langue anglaise et de l'univers de Xenosaga.</LI>
					<LI>le choix du titre du projet : ECHOES est un titre des Pink Floyd. Et alors? Hé bien, pour la petite histoire, sachez que feu Stanley Kubrick, pour son "2001 : l'odyssée de l'espace" avait pressenti les Floyd pour faire l'OST de ce film. Mais suite a une mésentente avec le groupe, il a du se résigner (bien lui en a pris) a illustrer ses images avec du Strauss, du Ligeti (atonal et puissant a souhait) et du Bartok. Il n'empêche que le morceau ECHOES semble coller parfaitement a la séquence du film "Jupiter et au dela de l'infini" (Cf <xsl:element name="A">
      					<xsl:attribute name="href"><xsl:text>http://web.archive.org/web/20190329053822/http://www.pinkfloydonline.com/echoes2001_synchs.html</xsl:text></xsl:attribute>synchro Echoes</xsl:element>). Le rapport avec Xenosaga ? L'analogie entre le monolithe de 2001 et le Zohar, et la fascination exercée par ces  deux artefacts sur l'humanité.</LI>
               </FONT>
            </P>

            <P>
               <FONT FACE="Arial,Helvetica" SIZE="-2">
               		<U>Mises à jour :</U>
		    <LI>24/04/22 : Remise à disposition du site sous la forme de projet Github</LI>
			<LI>18/03/06 : Parfois, un <A href="connexions.html">schéma</A> vaut mieux qu'un long discours (attention SPOILERS)</LI>
			<LI>11/03/06 : Corrections + Ajout d'une page <A href="references.xml">références et inspirations</A> (attention SPOILERS)</LI>
			<LI>28/02/06 : Corrections orthographiques. Homogénéisation du vocabulaire.</LI>
			<LI>17/02/06 : Ajout d'une page regroupant l'<A href="all_chapters_html.xml">intégralité des chapitres</A> dans une version imprimable</LI>
			<LI>12/02/06 : Traduction complète disponible dans une première version. <A href="#TRADUCTION">Bonne lecture!</A></LI>

               </FONT>
            </P>

            <P>
               <FONT FACE="Arial,Helvetica" SIZE="-2">
               		<U>Les musiques qui m'ont accompagnées dans mon travail:</U>
			<xsl:apply-templates select="./MUSICS" />
               </FONT>
            </P>

		<A name="#TRADUCTION" />

            <TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0" WIDTH="100%">
               <TR>
                  <TD ALIGN="left">
                     <FONT FACE="Arial,Helvetica" SIZE="-2">
                        <U>Chapitres :</U>
      <LI>
      <xsl:element name="A">
      <xsl:attribute name="href"><xsl:text>persos.xml</xsl:text></xsl:attribute>Présentation des personnages
      </xsl:element>
      </LI>
                        <xsl:apply-templates select="./AVAILABLE_CHAPTERS" />
                     </FONT>

                  </TD>
               </TR>
            </TABLE>

		<P>
			<!--Creative Commons License-->
			<img alt="Creative Commons License" border="0" src="http://creativecommons.org/images/public/somerights20.fr.png"/><BR/>
			<FONT FACE="Arial,Helvetica" SIZE="-2">Cette traduction est mise &#224; disposition sous un <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/2.0/fr/">contrat Creative Commons</a>.</FONT><a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/2.0/fr/">
				
			</a>
			<!--/Creative Commons License-->
			<!-- <rdf:RDF xmlns="http://web.resource.org/cc/" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
		<Work rdf:about="">
			<license rdf:resource="http://creativecommons.org/licenses/by-nc-sa/2.0/fr/" />
	<dc:type rdf:resource="http://purl.org/dc/dcmitype/Text" />
		</Work>
		<License rdf:about="http://creativecommons.org/licenses/by-nc-sa/2.0/fr/"><permits rdf:resource="http://web.resource.org/cc/Reproduction"/><permits rdf:resource="http://web.resource.org/cc/Distribution"/><requires rdf:resource="http://web.resource.org/cc/Notice"/><requires rdf:resource="http://web.resource.org/cc/Attribution"/><prohibits rdf:resource="http://web.resource.org/cc/CommercialUse"/><permits rdf:resource="http://web.resource.org/cc/DerivativeWorks"/><requires rdf:resource="http://web.resource.org/cc/ShareAlike"/></License></rdf:RDF> -->
		</P>
         </BODY>
      </HTML>
   </xsl:template>

   <xsl:template match="AVAILABLE_CHAPTER">
      <LI>
      <xsl:element name="A">
      <xsl:attribute name="href"><xsl:text>chapter</xsl:text><xsl:value-of select="@id" /><xsl:text>.xml</xsl:text></xsl:attribute>

      Chapitre 
      <xsl:value-of select="@id" />
      </xsl:element>

      ( 
      <xsl:value-of select="@releaseDate" />

      )</LI>
   </xsl:template>

   <xsl:template match="MUSIC">
      <LI>
	<xsl:value-of select="@artist" /> : <xsl:value-of select="@desc" />
      </LI>
   </xsl:template>

   <xsl:template match="image">
      <IMG SRC="todo" ALIGN="center" VSPACE="10" />
   </xsl:template>
</xsl:stylesheet>

