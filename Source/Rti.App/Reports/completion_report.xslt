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
        <Style ss:ID="s17">
          <NumberFormat ss:Format="Short Date"/>
        </Style>
        <Style ss:ID="s18">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s19">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s20">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s21">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
        </Style>
        <Style ss:ID="s25">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
        </Style>
        <Style ss:ID="s26">
          <Alignment ss:Vertical="Bottom"/>
        </Style>
        <Style ss:ID="s27">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s28">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s29">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders/>
        </Style>
        <Style ss:ID="s30">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s31">
          <Alignment ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s32">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s33">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s34">
          <Alignment ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s35">
          <Borders/>
        </Style>
        <Style ss:ID="s37">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders/>
        </Style>
        <Style ss:ID="s40">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
      </Styles>
      <Worksheet ss:Name="Лист1">
        <Table ss:ExpandedColumnCount="10" x:FullColumns="1"
         x:FullRows="1" ss:DefaultRowHeight="15">
          <Column ss:Width="53.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="18"/>
          <Column ss:Index="7" ss:AutoFitWidth="0" ss:Width="54.75"/>
          <Row>
            <Cell>
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Requests']/row/Manufacturer/@Name"/>
              </Data>
            </Cell>
            <Cell ss:Index="6">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Requests']/row/Customer/@Name"/>
              </Data>
            </Cell>
          </Row>
          <Row>
            <Cell>
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Requests']/row/Manufacturer/@Address"/>
              </Data>
            </Cell>
            <Cell ss:Index="6">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Requests']/row/Customer/@Address"/>
              </Data>
            </Cell>
          </Row>
          <Row>
            <Cell>
              <Data ss:Type="String">
                <xsl:value-of select="(concat('ИНН ', set[@name='Requests']/row/Manufacturer/@Inn))"/>
              </Data>
            </Cell>
            <Cell ss:Index="6">
              <Data ss:Type="String">
                <xsl:value-of select="(concat('ИНН ', set[@name='Requests']/row/Customer/@Inn))"/>
              </Data>
            </Cell>
          </Row>
          <Row>
            <Cell>
              <Data ss:Type="String">
                <xsl:value-of select="(concat('ИНН ', set[@name='Requests']/row/Manufacturer/@Kpp))"/>
              </Data>
            </Cell>
            <Cell ss:Index="6">
              <Data ss:Type="String">
                <xsl:value-of select="concat('ИНН ', set[@name='Requests']/row/Customer/@Inn)"/>
              </Data>
            </Cell>
          </Row>
          <Row ss:Index="10">
            <Cell ss:MergeAcross="9" ss:StyleID="s25">
              <Data ss:Type="String">АКТ</Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:MergeAcross="9" ss:StyleID="s25">
              <Data ss:Type="String">выполненных работ</Data>
            </Cell>
          </Row>
          <Row ss:Index="14">
            <Cell ss:StyleID="s17">
              <Data ss:Type="String">
                <xsl:value-of select="rti:GetCurrentDateTime('dd.MM.yyyy')"/>
              </Data>
            </Cell>
          </Row>
          <Row ss:Index="16">
            <Cell>
              <Data ss:Type="String">Мы, нижеподписавшиеся, представитель Заказчика ,</Data>
            </Cell>
            <Cell ss:Index="6" ss:StyleID="s18"/>
            <Cell ss:StyleID="s18"/>
            <Cell ss:StyleID="s18"/>
            <Cell ss:StyleID="s18"/>
            <Cell ss:StyleID="s18"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s18"/>
            <Cell ss:StyleID="s18"/>
            <Cell ss:StyleID="s18"/>
            <Cell ss:StyleID="s18"/>
            <Cell ss:StyleID="s18"/>
            <Cell ss:StyleID="s18"/>
            <Cell ss:StyleID="s18"/>
            <Cell ss:StyleID="s18"/>
            <Cell ss:StyleID="s18"/>
            <Cell ss:StyleID="s18"/>
          </Row>
          <Row>
            <Cell>
              <Data ss:Type="String">в лице,           </Data>
            </Cell>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s20"/>
            <Cell ss:StyleID="s21">
              <Data ss:Type="String">с одной стороны,</Data>
            </Cell>
            <Cell ss:StyleID="s21"/>
          </Row>
          <Row>
            <Cell>
              <Data ss:Type="String">
                <xsl:value-of select="concat(concat('и представитель Исполнителя, ', set[@name='Requests']/row/Manufacturer/@Name), ', в лице директора')"/>
              </Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:MergeAcross="9" ss:StyleID="s21">
              <Data ss:Type="String">
                <xsl:value-of select="concat(set[@name='Requests']/row/Manufacturer/@Director, ', с другой стороны, составили настоящий акт о том, что ')"/>
              </Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:StyleID="s21">
              <Data ss:Type="String">
                <xsl:value-of select="concat(set[@name='Requests']/row/Manufacturer/@Name, ' выполнило работы по изготовлению следующей оснастки:')"/>
              </Data>
            </Cell>
          </Row>

          <xsl:apply-templates select="set[@name='ReportItems']/row" />

          <Row>
            <Cell ss:StyleID="s27">
              <Data ss:Type="String">Стоимость выполненных работ составила:</Data>
            </Cell>
            <Cell ss:StyleID="s27"/>
            <Cell ss:StyleID="s29"/>
            <Cell ss:StyleID="s29"/>
            <Cell ss:StyleID="s29"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s31"/>
            <Cell ss:StyleID="s31"/>
            <Cell ss:StyleID="s31"/>
            <Cell ss:StyleID="s18"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s32">
              <xsl:value-of select="rti:GetRepresentation(set[@name='Requests']/row/@CompleteSum)"/>
            </Cell>
            <Cell ss:StyleID="s32"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s31"/>
            <Cell ss:StyleID="s31"/>
            <Cell ss:StyleID="s31"/>
            <Cell ss:StyleID="s18"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s33"/>
            <Cell ss:StyleID="s33"/>
            <Cell ss:StyleID="s28"/>
            <Cell ss:StyleID="s28"/>
            <Cell ss:StyleID="s28"/>
            <Cell ss:StyleID="s28"/>
            <Cell ss:StyleID="s34"/>
            <Cell ss:StyleID="s34"/>
            <Cell ss:StyleID="s34"/>
            <Cell ss:StyleID="s19"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s27"/>
            <Cell ss:StyleID="s27"/>
            <Cell ss:StyleID="s29"/>
            <Cell ss:StyleID="s29"/>
            <Cell ss:StyleID="s29"/>
            <Cell ss:StyleID="s25"/>
            <Cell ss:StyleID="s26"/>
            <Cell ss:StyleID="s26"/>
            <Cell ss:StyleID="s26"/>
            <Cell ss:StyleID="s35"/>
          </Row>
          <Row>
            <Cell>
              <Data ss:Type="String">Претензии по качеству выполненных работ принимаются в течение 5 (пяти) рабочих дней.</Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:StyleID="s27"/>
            <Cell ss:StyleID="s27"/>
            <Cell ss:StyleID="s29"/>
            <Cell ss:StyleID="s29"/>
            <Cell ss:StyleID="s29"/>
            <Cell ss:StyleID="s25"/>
            <Cell ss:StyleID="s26"/>
            <Cell ss:StyleID="s26"/>
            <Cell ss:StyleID="s26"/>
            <Cell ss:StyleID="s35"/>
          </Row>
          <Row>
            <Cell ss:MergeAcross="2" ss:StyleID="s21">
              <Data ss:Type="String">Исполнитель</Data>
            </Cell>
            <Cell ss:Index="6" ss:MergeAcross="2" ss:StyleID="s21">
              <Data ss:Type="String">Заказчик</Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:MergeAcross="2" ss:StyleID="s21">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Requests']/row/Manufacturer/@Name"/>
              </Data>
            </Cell>
            <Cell ss:Index="6" ss:MergeAcross="2" ss:StyleID="s40">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Requests']/row/Customer/@Name"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s37"/>
          </Row>
          <Row>
            <Cell ss:MergeAcross="1" ss:StyleID="s30"/>
            <Cell ss:MergeAcross="1" ss:StyleID="s25">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Requests']/row/Manufacturer/@Director"/>
              </Data>
            </Cell>
            <Cell ss:Index="6" ss:MergeAcross="1" ss:StyleID="s28"/>
            <Cell ss:MergeAcross="2" ss:StyleID="s25">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Requests']/row/Customer/@Director"/>
              </Data>
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
              <ActiveRow>25</ActiveRow>
            </Pane>
          </Panes>
          <ProtectObjects>False</ProtectObjects>
          <ProtectScenarios>False</ProtectScenarios>
        </WorksheetOptions>
      </Worksheet>
      <Worksheet ss:Name="Лист2">
        <Table ss:ExpandedColumnCount="1" ss:ExpandedRowCount="1" x:FullColumns="1"
         x:FullRows="1" ss:DefaultRowHeight="15">
        </Table>
        <WorksheetOptions xmlns="urn:schemas-microsoft-com:office:excel">
          <PageSetup>
            <Header x:Margin="0.3"/>
            <Footer x:Margin="0.3"/>
            <PageMargins x:Bottom="0.75" x:Left="0.7" x:Right="0.7" x:Top="0.75"/>
          </PageSetup>
          <ProtectObjects>False</ProtectObjects>
          <ProtectScenarios>False</ProtectScenarios>
        </WorksheetOptions>
      </Worksheet>
      <Worksheet ss:Name="Лист3">
        <Table ss:ExpandedColumnCount="1" ss:ExpandedRowCount="1" x:FullColumns="1"
         x:FullRows="1" ss:DefaultRowHeight="15">
        </Table>
        <WorksheetOptions xmlns="urn:schemas-microsoft-com:office:excel">
          <PageSetup>
            <Header x:Margin="0.3"/>
            <Footer x:Margin="0.3"/>
            <PageMargins x:Bottom="0.75" x:Left="0.7" x:Right="0.7" x:Top="0.75"/>
          </PageSetup>
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
    <Row>
      <Cell ss:StyleID="s27">
        <Data ss:Type="String">
          <xsl:value-of select="@Representation"/>
        </Data>
      </Cell>
    </Row>
  </xsl:template>

</xsl:stylesheet>
