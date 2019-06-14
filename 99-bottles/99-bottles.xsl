<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
    <xsl:output method="text"/>
    <xsl:template match="/">
        <xsl:value-of
            select="
                for $x in reverse(1 to 99)
                return
                    let $suf := if ($x = 1) then '' else 's'
                    return
                        concat($x, ' bottle', $suf, ' of beer on the wall&#10;',
                        $x, ' bottle', $suf, ' of beer&#10;Take one down, pass it around&#10;',
                        $x - 1, ' bottle', if ($x = 2) then '' else 's', ' of beer on the wall')" separator="&#10;&#10;"
        />
    </xsl:template>
</xsl:stylesheet>
