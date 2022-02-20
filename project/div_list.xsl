<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <link rel="stylesheet" href="styles.css"></link>
      </head>
      <body>
        <h2>My games</h2>
        <div class=" grow list_of_games">
          <xsl:for-each select="list_of_games/game">
            <div class="game">
              <div class="game-info">
                <h2>
                  <xsl:value-of select="name" />
                </h2>
                <p class="tag tag--{@type}">
                  <xsl:value-of select="@type" />
                </p>
                <p>
                  <xsl:value-of select="developer" />
                  Release date:
                  <xsl:value-of select="release_date" />
                </p>
                <p class="desc desc--{description/@type}">
                  <xsl:value-of select="description" />
                </p>
              </div>
              <div class="grow game-picture">
                <img>
                  <xsl:attribute name="src">
                    <xsl:value-of select="img" />
                  </xsl:attribute>
                </img>
              </div>
            </div>
          </xsl:for-each>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>