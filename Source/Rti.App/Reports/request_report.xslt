<xsl:stylesheet version="1.0"
  xmlns="urn:schemas-microsoft-com:office:spreadsheet"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt"
	xmlns:o="urn:schemas-microsoft-com:office:office"
	xmlns:x="urn:schemas-microsoft-com:office:excel"
	xmlns:ss="urn:schemas-microsoft-com:office:spreadsheet"
	xmlns:html="http://www.w3.org/TR/REC-html40"
	xmlns:rti="urn:rti">

  <xsl:output method="xml" encoding="utf-8" indent="yes" omit-xml-declaration="no"/>

  <xsl:template match="root">

    <xsl:processing-instruction name="mso-application">
      <xsl:text>progid="Excel.Sheet"</xsl:text>
    </xsl:processing-instruction>
    <?mso-application progid="Excel.Sheet"?>
    <Workbook xmlns="urn:schemas-microsoft-com:office:spreadsheet"
     xmlns:o="urn:schemas-microsoft-com:office:office"
     xmlns:x="urn:schemas-microsoft-com:office:excel"
     xmlns:ss="urn:schemas-microsoft-com:office:spreadsheet"
     xmlns:html="http://www.w3.org/TR/REC-html40">
      <DocumentProperties xmlns="urn:schemas-microsoft-com:office:office">
        <Author></Author>
        <LastAuthor></LastAuthor>
        <Created>2016-06-09T20:20:12Z</Created>
        <LastSaved>2016-06-09T21:35:33Z</LastSaved>
        <Company></Company>
        <Version>14.00</Version>
      </DocumentProperties>
      <ExcelWorkbook xmlns="urn:schemas-microsoft-com:office:excel">
        <WindowHeight>8010</WindowHeight>
        <WindowWidth>16275</WindowWidth>
        <WindowTopX>240</WindowTopX>
        <WindowTopY>60</WindowTopY>
        <ProtectStructure>False</ProtectStructure>
        <ProtectWindows>False</ProtectWindows>
      </ExcelWorkbook>
      <Styles>
        <Style ss:ID="Default" ss:Name="Normal">
          <Alignment ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="11"
           ss:Color="#000000"/>
          <Interior/>
          <NumberFormat/>
          <Protection/>
        </Style>
        <Style ss:ID="s16">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s17">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <NumberFormat ss:Format="Short Date"/>
        </Style>
        <Style ss:ID="s22">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="14"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s73">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Interior ss:Color="#FFFF00" ss:Pattern="Solid"/>
        </Style>
        <Style ss:ID="s74">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="11"
           ss:Color="#000000" ss:Bold="1"/>
          <Interior ss:Color="#D9D9D9" ss:Pattern="Solid"/>
        </Style>
        <Style ss:ID="s76">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Interior ss:Color="#FF0000" ss:Pattern="Solid"/>
        </Style>
        <Style ss:ID="s81">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Interior ss:Color="#00B050" ss:Pattern="Solid"/>
        </Style>
      </Styles>
      <Worksheet ss:Name="Лист1">
        <Table ss:ExpandedColumnCount="8" x:FullColumns="1"
         x:FullRows="1" ss:DefaultRowHeight="15">
          <Column ss:AutoFitWidth="0" ss:Width="40.5"/>
          <Column ss:Width="65.25"/>
          <Column ss:Width="54"/>
          <Column ss:Width="71.25"/>
          <Column ss:Width="53.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="49.5"/>
          <Column ss:Width="53.25"/>
          <Column ss:Width="72"/>
          <Row ss:Height="18.75">
            <Cell ss:MergeAcross="7" ss:StyleID="s22">
              <Data ss:Type="String">Реестр заявок</Data>
            </Cell>
          </Row>
          <Row ss:Index="3" ss:AutoFitHeight="0" ss:Height="30.75">
            <Cell ss:StyleID="s74">
              <Data ss:Type="String">Номер заявки</Data>
            </Cell>
            <Cell ss:StyleID="s74">
              <Data ss:Type="String">Дата регистрации</Data>
            </Cell>
            <Cell ss:StyleID="s74">
              <Data ss:Type="String">Срок изг-я оснастки </Data>
            </Cell>
            <Cell ss:StyleID="s74">
              <Data ss:Type="String">Срок изготовления</Data>
            </Cell>
            <Cell ss:StyleID="s74">
              <Data ss:Type="String">Дата отгрузки</Data>
            </Cell>
            <Cell ss:StyleID="s74">
              <Data ss:Type="String">Статус</Data>
            </Cell>
            <Cell ss:StyleID="s74">
              <Data ss:Type="String">Дата оплаты</Data>
            </Cell>
            <Cell ss:StyleID="s74">
              <Data ss:Type="String">Дата отгрузки фактическая </Data>
            </Cell>
          </Row>

          <xsl:apply-templates select="set[@name='Rows']/row" />

        </Table>
        <WorksheetOptions xmlns="urn:schemas-microsoft-com:office:excel">
          <PageSetup>
            <Header x:Margin="0.3"/>
            <Footer x:Margin="0.3"/>
            <PageMargins x:Bottom="0.75" x:Left="0.7" x:Right="0.7" x:Top="0.75"/>
          </PageSetup>
          <Print>
            <ValidPrinterInfo/>
            <HorizontalResolution>600</HorizontalResolution>
            <VerticalResolution>600</VerticalResolution>
          </Print>
          <Selected/>
          <Panes>
            <Pane>
              <Number>3</Number>
              <ActiveRow>12</ActiveRow>
              <ActiveCol>7</ActiveCol>
            </Pane>
          </Panes>
          <ProtectObjects>False</ProtectObjects>
          <ProtectScenarios>False</ProtectScenarios>
        </WorksheetOptions>
      </Worksheet>
    </Workbook>
  </xsl:template>

  <xsl:template match="set[@name='Rows']/row">
    <xsl:choose>
      <xsl:when test="@Diff &gt; @LeadTime">
        <xsl:call-template name = "GreenRow"/>
      </xsl:when>
      <xsl:when test="@Diff = @LeadTime">
        <xsl:call-template name = "YellowRow"/>
      </xsl:when>
      <xsl:when test="@Diff &lt; @LeadTime">
        <xsl:call-template name = "RedRow"/>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template name="YellowRow">
    <Row>
      <Cell ss:StyleID="s16">
        <Data ss:Type="Number">
          <xsl:value-of select="@Number"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s17">
        <Data ss:Type="String">
          <xsl:value-of select="rti:FormatDateTime(@RegDate, 'dd.MM.yyyy')"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s16">
        <Data ss:Type="Number">
          <xsl:value-of select="@EquipmentLeadTime"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s16">
        <Data ss:Type="Number">
          <xsl:value-of select="@LeadTime"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s17">
        <Data ss:Type="String">
          <xsl:value-of select="rti:FormatDateTime(@ShipDate, 'dd.MM.yyyy')"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s73"/>
      <Cell ss:StyleID="s17">
        <Data ss:Type="String">
          <xsl:value-of select="rti:FormatDateTime(@LastPaymentDate, 'dd.MM.yyyy')"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s17">
        <Data ss:Type="String">
          <xsl:value-of select="rti:FormatDateTime(@LastShipmentDate, 'dd.MM.yyyy')"/>
        </Data>
      </Cell>
    </Row>
  </xsl:template>
  <xsl:template name="RedRow">
    <Row>
      <Cell ss:StyleID="s16">
        <Data ss:Type="Number">
          <xsl:value-of select="@Number"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s17">
        <Data ss:Type="String">
          <xsl:value-of select="rti:FormatDateTime(@RegDate, 'dd.MM.yyyy')"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s16">
        <Data ss:Type="Number">
          <xsl:value-of select="@EquipmentLeadTime"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s16">
        <Data ss:Type="Number">
          <xsl:value-of select="@LeadTime"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s17">
        <Data ss:Type="String">
          <xsl:value-of select="rti:FormatDateTime(@ShipDate, 'dd.MM.yyyy')"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s76"/>
      <Cell ss:StyleID="s17">
        <Data ss:Type="String">
          <xsl:value-of select="rti:FormatDateTime(@LastPaymentDate, 'dd.MM.yyyy')"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s17">
        <Data ss:Type="String">
          <xsl:value-of select="rti:FormatDateTime(@LastShipmentDate, 'dd.MM.yyyy')"/>
        </Data>
      </Cell>
    </Row>
  </xsl:template>
  <xsl:template name="GreenRow">
    <Row>
      <Cell ss:StyleID="s16">
        <Data ss:Type="Number">
          <xsl:value-of select="@Number"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s17">
        <Data ss:Type="String">
          <xsl:value-of select="rti:FormatDateTime(@RegDate, 'dd.MM.yyyy')"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s16">
        <Data ss:Type="Number">
          <xsl:value-of select="@EquipmentLeadTime"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s16">
        <Data ss:Type="Number">
          <xsl:value-of select="@LeadTime"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s17">
        <Data ss:Type="String">
          <xsl:value-of select="rti:FormatDateTime(@ShipDate, 'dd.MM.yyyy')"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s81"/>
      <Cell ss:StyleID="s17">
        <Data ss:Type="String">
          <xsl:value-of select="rti:FormatDateTime(@LastPaymentDate, 'dd.MM.yyyy')"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s17">
        <Data ss:Type="String">
          <xsl:value-of select="rti:FormatDateTime(@LastShipmentDate, 'dd.MM.yyyy')"/>
        </Data>
      </Cell>
    </Row>
  </xsl:template>

</xsl:stylesheet>
