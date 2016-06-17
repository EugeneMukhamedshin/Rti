<?xml version="1.0"?>
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
        <Author>Oleg</Author>
        <LastAuthor></LastAuthor>
        <Created>2016-03-23T18:32:08Z</Created>
        <LastSaved>2016-06-07T20:35:43Z</LastSaved>
        <Version>14.00</Version>
      </DocumentProperties>
      <OfficeDocumentSettings xmlns="urn:schemas-microsoft-com:office:office">
        <AllowPNG/>
      </OfficeDocumentSettings>
      <ExcelWorkbook xmlns="urn:schemas-microsoft-com:office:excel">
        <WindowHeight>7485</WindowHeight>
        <WindowWidth>14355</WindowWidth>
        <WindowTopX>480</WindowTopX>
        <WindowTopY>120</WindowTopY>
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
        <Style ss:ID="s62">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
        </Style>
        <Style ss:ID="s64">
          <NumberFormat ss:Format="Short Date"/>
        </Style>
        <Style ss:ID="s69">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
        </Style>
        <Style ss:ID="s70">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s71">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders/>
        </Style>
        <Style ss:ID="s78">
          <Alignment ss:Vertical="Bottom"/>
        </Style>
        <Style ss:ID="s79">
          <Borders/>
        </Style>
        <Style ss:ID="s84">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s91">
          <Alignment ss:Horizontal="Left" ss:Vertical="Top" ss:WrapText="1"/>
        </Style>
        <Style ss:ID="s95">
          <Alignment ss:Horizontal="Left" ss:Vertical="Top" ss:Indent="3" ss:WrapText="1"/>
        </Style>
        <Style ss:ID="s96">
          <Alignment ss:Vertical="Bottom"/>
          <Borders/>
        </Style>
        <Style ss:ID="s97">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s99">
          <Alignment ss:Horizontal="Left" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders/>
        </Style>
      </Styles>
      <Worksheet ss:Name="Лист1">
        <Names>
          <NamedRange ss:Name="Print_Area" ss:RefersTo="=Лист1!R1C1:R29C10"/>
        </Names>
        <Table ss:ExpandedColumnCount="10" x:FullColumns="1"
               x:FullRows="1" ss:DefaultRowHeight="15">
          <Column ss:Width="53.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="18"/>
          <Column ss:Index="7" ss:AutoFitWidth="0" ss:Width="54.75"/>
          <Row ss:AutoFitHeight="0" ss:Height="42">
            <Cell ss:MergeAcross="4" ss:StyleID="s91">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Requests']/row/Manufacturer/@Name"/>
              </Data>
              <NamedCell
          ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeAcross="4" ss:StyleID="s91">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Requests']/row/Customer/@Name"/>
              </Data>
              <NamedCell
          ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="48.75">
            <Cell ss:MergeAcross="4" ss:StyleID="s91">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Requests']/row/Manufacturer/@Address"/>
              </Data>
              <NamedCell
          ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeAcross="4" ss:StyleID="s91">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Requests']/row/Customer/@Address"/>
              </Data>
              <NamedCell
          ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0">
            <Cell>
              <Data ss:Type="String">
                <xsl:value-of select="concat('ИНН ', set[@name='Requests']/row/Manufacturer/@Inn)"/>
              </Data>
              <NamedCell
          ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:Index="6">
              <Data ss:Type="String">
                <xsl:value-of select="concat('ИНН ', set[@name='Requests']/row/Customer/@Inn)"/>
              </Data>
              <NamedCell
          ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0">
            <Cell>
              <Data ss:Type="String">
                <xsl:value-of select="concat('КПП ', set[@name='Requests']/row/Manufacturer/@Kpp)"/>
              </Data>
              <NamedCell
          ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:Index="6">
              <Data ss:Type="String">
                <xsl:value-of select="concat('КПП ', set[@name='Requests']/row/Customer/@Kpp)"/>
              </Data>
              <NamedCell
          ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row ss:Index="10" ss:AutoFitHeight="0">
            <Cell ss:MergeAcross="9" ss:StyleID="s62">
              <Data ss:Type="String">АКТ</Data>
              <NamedCell
          ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0">
            <Cell ss:MergeAcross="9" ss:StyleID="s62">
              <Data ss:Type="String">выполненных работ</Data>
              <NamedCell
          ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row ss:Index="14" ss:AutoFitHeight="0">
            <Cell ss:StyleID="s64">
              <Data ss:Type="String">
                <xsl:value-of select="rti:GetCurrentDateTime('dd.MM.yyyy')"/>
              </Data>
              <NamedCell
          ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0">
            <Cell ss:StyleID="s64">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="90">
            <Cell ss:MergeAcross="9" ss:StyleID="s91">
              <Data ss:Type="String">
                <xsl:value-of select="concat('Мы, нижеподписавшиеся, представитель Заказчика ', concat(set[@name='Requests']/row/Customer/@Name, concat(', в лице ________________ _______________ ________________, с одной стороны и представитель Исполнителя, ', concat(set[@name='Requests']/row/Manufacturer/@Name, concat(', в лице директора ', concat(set[@name='Requests']/row/Manufacturer/@Director, concat(', с другой стороны, составили настоящий акт о том, что ', concat(set[@name='Requests']/row/Manufacturer/@Name, ' выполнило работы по изготовлению следующей оснастки:'))))))))"/>
              </Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="11.25">
            <Cell ss:StyleID="s95">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s95">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s95">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s95">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s95">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s95">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s95">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s95">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s95">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s95">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>

          <xsl:apply-templates select="set[@name='ReportItems']/row" />

           <Row ss:AutoFitHeight="0" ss:Height="11.25">
            <Cell ss:StyleID="s95">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s95">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s95">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s95">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s95">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s95">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s95">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s95">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s95">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s95">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
         <Row ss:AutoFitHeight="0">
            <Cell ss:StyleID="s70">
              <Data ss:Type="String">Стоимость выполненных работ составила:</Data>
              <NamedCell
          ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s70">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s71">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s71">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s71">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s71">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s96">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s96">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s96">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s79">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0">
            <Cell ss:StyleID="s97">
              <Data ss:Type="String">
                <xsl:value-of select="concat(set[@name='Requests']/row/@CompleteSum, concat('руб. (', concat(rti:GetRepresentation(set[@name='Requests']/row/@CompleteSum), ')')))"/>
              </Data>
              <NamedCell
          ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s97">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s71">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s71">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s71">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s71">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s96">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s96">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s96">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s79">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0">
            <Cell ss:StyleID="s70">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s70">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s71">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s71">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s71">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s62">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s78">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s78">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s78">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s79">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0">
            <Cell>
              <Data ss:Type="String">Претензии по качеству выполненных работ принимаются в течение 5 (пяти) рабочих дней.</Data>
              <NamedCell
          ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0">
            <Cell ss:StyleID="s70">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s70">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s71">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s71">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s71">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s62">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s78">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s78">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s78">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s79">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0">
            <Cell ss:MergeAcross="2" ss:StyleID="s69">
              <Data ss:Type="String">Исполнитель</Data>
              <NamedCell
          ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:Index="6" ss:MergeAcross="2" ss:StyleID="s69">
              <Data ss:Type="String">Заказчик</Data>
              <NamedCell
          ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="33.75">
            <Cell ss:MergeAcross="4" ss:StyleID="s91">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Requests']/row/Manufacturer/@Name"/>
              </Data>
              <NamedCell
          ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeAcross="4" ss:StyleID="s99">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Requests']/row/Customer/@Name"/>
              </Data>
              <NamedCell
          ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0">
            <Cell ss:MergeAcross="1" ss:StyleID="s84">
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="s62">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Requests']/row/Manufacturer/@Director"/>
              </Data>
              <NamedCell
          ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:Index="6" ss:MergeAcross="1" ss:StyleID="s84">
              <NamedCell
          ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="s62">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Requests']/row/Customer/@Director"/>
              </Data>
              <NamedCell
          ss:Name="Print_Area"/>
            </Cell>
          </Row>
        </Table>
        <WorksheetOptions xmlns="urn:schemas-microsoft-com:office:excel">
          <PageSetup>
            <Header x:Margin="0.3"/>
            <Footer x:Margin="0.3"/>
            <PageMargins x:Bottom="0.75" x:Left="0.7" x:Right="0.7" x:Top="0.75"/>
          </PageSetup>
          <Selected/>
          <Panes>
            <Pane>
              <Number>3</Number>
              <ActiveRow>1</ActiveRow>
              <RangeSelection>R2C1:R2C5</RangeSelection>
            </Pane>
          </Panes>
          <ProtectObjects>False</ProtectObjects>
          <ProtectScenarios>False</ProtectScenarios>
        </WorksheetOptions>
      </Worksheet>
    </Workbook>
  </xsl:template>

  <xsl:template match="set[@name='ReportItems']/row">
    <xsl:call-template name = "ReportItemRow"/>
  </xsl:template>

  <xsl:template name="ReportItemRow">
    <Row ss:AutoFitHeight="0">
      <Cell ss:StyleID="s70">
        <Data ss:Type="String">
          <xsl:value-of select="@Representation"/>
        </Data>
        <NamedCell
    ss:Name="Print_Area"/>
      </Cell>
    </Row>
  </xsl:template>

</xsl:stylesheet>