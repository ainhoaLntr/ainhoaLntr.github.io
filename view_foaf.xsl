<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0"
    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
    xmlns:foaf="http://xmlns.com/foaf/0.1/">

    <!-- La sortie sera du XHTML -->
    <xsl:output method="xml" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
        doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
        indent="yes" encoding="UTF-8" />

    <!-- Template principal -->
    <xsl:template match="/">
        <html xmlns="http://www.w3.org/1999/xhtml">
            <head>
                <title>FOAF Profile</title>
            </head>
            <body>
                <h1>FOAF Profile</h1>

                <!-- Affichage des informations personnelles -->
                <xsl:for-each select="//foaf:Person">
                    <div>
                        <h2>
                            <xsl:value-of select="foaf:name" />
                        </h2>
                        <p>
                            <strong>Title: </strong>
                            <xsl:value-of select="foaf:title" />
                        </p>
                        <p>
                            <strong>Email: </strong>
                            <xsl:value-of select="foaf:email" />
                        </p>
                        <p>
                            <strong>RDF: </strong>
                            <a
                                href="{foaf:person/@rdf:about}">
                                <xsl:value-of select="foaf:person/@rdf:about" />
                            </a>

                        </p>

                        <!-- Lien vers la homepage -->
                        <xsl:if test="foaf:homepage">
                            <p>
                                <strong>My homepage: </strong>
                                <a href="{foaf:homepage/@rdf:resource}">Homepage</a>
                            </p>
                        </xsl:if>

                        <!-- Relations avec d'autres personnes -->
                        
                    </div>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>