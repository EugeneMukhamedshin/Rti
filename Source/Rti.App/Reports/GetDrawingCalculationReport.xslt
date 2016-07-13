<?xml version="1.0" encoding="utf-8"?>
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
        <Style ss:ID="m240341412">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <NumberFormat ss:Format="Standard"/>
        </Style>
        <Style ss:ID="m240341432">
          <Alignment ss:Horizontal="Right" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="14"
           ss:Color="#000000" ss:Bold="1"/>
          <NumberFormat ss:Format="Standard"/>
        </Style>
        <Style ss:ID="m240341452">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <NumberFormat ss:Format="Standard"/>
        </Style>
        <Style ss:ID="m240341532">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <NumberFormat ss:Format="Standard"/>
        </Style>
        <Style ss:ID="m240341572">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <NumberFormat ss:Format="Standard"/>
        </Style>
        <Style ss:ID="m240341612">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <NumberFormat ss:Format="Standard"/>
        </Style>
        <Style ss:ID="m240341012">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <NumberFormat ss:Format="Standard"/>
        </Style>
        <Style ss:ID="m240341052">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <NumberFormat ss:Format="Standard"/>
        </Style>
        <Style ss:ID="m240341092">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <NumberFormat ss:Format="Standard"/>
        </Style>
        <Style ss:ID="m240341132">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <NumberFormat ss:Format="Standard"/>
        </Style>
        <Style ss:ID="m234614248">
          <Alignment ss:Horizontal="Left" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <NumberFormat ss:Format="Standard"/>
        </Style>
        <Style ss:ID="m234614268">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <NumberFormat ss:Format="Standard"/>
        </Style>
        <Style ss:ID="m234614288">
          <Alignment ss:Horizontal="Left" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <NumberFormat ss:Format="Standard"/>
        </Style>
        <Style ss:ID="m234614308">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <NumberFormat ss:Format="Standard"/>
        </Style>
        <Style ss:ID="m234614348">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="14"
           ss:Color="#000000" ss:Bold="1"/>
          <NumberFormat ss:Format="Standard"/>
        </Style>
        <Style ss:ID="m234614388">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <NumberFormat ss:Format="Standard"/>
        </Style>
        <Style ss:ID="m234614428">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders><NumberFormat ss:Format="Standard"/>
        </Style>
        <Style ss:ID="m234614468">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <NumberFormat ss:Format="Standard"/>
        </Style>
        <Style ss:ID="m234614508">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <NumberFormat ss:Format="Standard"/>
        </Style>
        <Style ss:ID="s16">
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="11"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s17">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s18">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s19">
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="8"
           ss:Color="#000000"/>
        </Style>
        <Style ss:ID="s20">
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="12"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s21">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s22">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s23">
          <Alignment ss:Vertical="Center"/>
        </Style>
        <Style ss:ID="s24">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s25">
          <Borders/>
        </Style>
        <Style ss:ID="s26">
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="14"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s27">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="14"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s53">
          <Alignment ss:Horizontal="Right" ss:Vertical="Bottom"/>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="8"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s54">
          <Alignment ss:Horizontal="Right" ss:Vertical="Bottom"/>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="14"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s61">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="14"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s63">
          <Alignment ss:Horizontal="Left" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s66">
          <Alignment ss:Horizontal="Left" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s69">
          <Alignment ss:Horizontal="Right" ss:Vertical="Bottom"/>
        </Style>
        <Style ss:ID="s70">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s71">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="8"
           ss:Color="#000000"/>
        </Style>
        <Style ss:ID="s77">
          <Alignment ss:Horizontal="Right" ss:Vertical="Bottom"/>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="11"
           ss:Color="#000000"/>
        </Style>
      </Styles>
      <Worksheet ss:Name="Лист1">
        <Table x:FullColumns="1" x:FullRows="1" ss:DefaultRowHeight="15">
          <Row ss:Height="18.75">
            <Cell ss:StyleID="s26">
              <Data ss:Type="String">Утверждаю:</Data>
            </Cell>
            <Cell ss:Index="6" ss:StyleID="s26">
              <Data ss:Type="String">Согласовано:</Data>
            </Cell>
          </Row>
          <Row ss:Index="3">
            <Cell ss:StyleID="s16">
              <Data ss:Type="String">Директор ООО &quot;Элма-1&quot;</Data>
            </Cell>
            <Cell ss:Index="6" ss:StyleID="s17"/>
            <Cell ss:StyleID="s17"/>
            <Cell ss:StyleID="s17"/>
            <Cell ss:StyleID="s17"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="24.5625">
            <Cell>
              <Data ss:Type="String">____________ Ю.В. Холодников</Data>
            </Cell>
            <Cell ss:Index="6" ss:StyleID="s18"/>
            <Cell ss:StyleID="s18"/>
            <Cell ss:StyleID="s18"/>
            <Cell ss:StyleID="s18"/>
          </Row>
          <Row ss:Index="6" ss:AutoFitHeight="0" ss:Height="28.125">
            <Cell ss:Index="2" ss:MergeAcross="2" ss:StyleID="s54">
              <Data ss:Type="String">Калькуляция №</Data>
            </Cell>
            <Cell ss:StyleID="s17">
              <Data ss:Type="Number">
                <xsl:value-of select="Calculation/@Id"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s17"/>
            <Cell ss:StyleID="s17"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="18">
            <Cell ss:Index="3" ss:MergeAcross="1" ss:StyleID="s53">
              <Data ss:Type="String">Дата составления</Data>
            </Cell>
            <Cell ss:StyleID="s17">
              <Data ss:Type="String">
                <xsl:value-of select="rti:FormatDate(Report/@Date)"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s17"/>
            <Cell ss:StyleID="s25"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="24.5625">
            <Cell ss:StyleID="s25"/>
            <Cell ss:StyleID="s25"/>
            <Cell ss:MergeAcross="4" ss:StyleID="s70">
              <Data ss:Type="String">
                <xsl:value-of select="Drawing/Detail/@Name"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s25"/>
            <Cell ss:StyleID="s25"/>
          </Row>
          <Row>
            <Cell ss:Index="3" ss:MergeAcross="4" ss:StyleID="s71">
              <Data ss:Type="String">наименование детали</Data>
            </Cell>
          </Row>
          <Row ss:Index="11">
            <Cell ss:MergeAcross="1" ss:StyleID="s77">
              <Data ss:Type="String">№ чертежа</Data>
            </Cell>
            <Cell ss:StyleID="s17">
              <Data ss:Type="String">
                <xsl:value-of select="Drawing/Group/@Name"/>.<xsl:value-of select="Drawing/@Name"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s17"/>
            <Cell ss:StyleID="s17"/><Cell ss:StyleID="s17"/>
            <Cell ss:StyleID="s17"/>
            <Cell ss:StyleID="s17"/>
          </Row>
          <Row>
            <Cell ss:MergeAcross="1" ss:StyleID="s77"/>
            <Cell ss:StyleID="s18"/>
            <Cell ss:StyleID="s18"/>
            <Cell ss:StyleID="s18"/>
            <Cell ss:StyleID="s18"/>
            <Cell ss:StyleID="s18"/>
            <Cell ss:StyleID="s18"/>
          </Row>
          <Row ss:Index="14" ss:Height="16.5">
            <Cell ss:Index="4" ss:StyleID="s20"/>
          </Row>
          <Row ss:Height="19.5" ss:StyleID="s20">
            <Cell ss:StyleID="s27">
              <Data ss:Type="String">№ п/п</Data>
            </Cell>
            <Cell ss:MergeAcross="4" ss:StyleID="s61">
              <Data ss:Type="String">Наименование статей калькуляции</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="m234614348">
              <Data ss:Type="String">Стоимость в руб.</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="19.125" ss:StyleID="s23">
            <Cell ss:StyleID="s22">
              <Data ss:Type="Number">1</Data>
            </Cell>
            <Cell ss:MergeAcross="4" ss:StyleID="s63">
              <Data ss:Type="String">Сырье и материалы</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="m234614388">
              <Data ss:Type="Number">
                <xsl:value-of select="Calculation/@AllMaterials"/>
              </Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="19.125" ss:StyleID="s23">
            <Cell ss:StyleID="s24">
              <Data ss:Type="Number">2</Data>
            </Cell>
            <Cell ss:MergeAcross="4" ss:StyleID="s66">
              <Data ss:Type="String">Электроэнергия прочая</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="m234614428">
              <Data ss:Type="Number">
                <xsl:value-of select="Calculation/@OtherPower"/>
              </Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="19.125" ss:StyleID="s23">
            <Cell ss:StyleID="s24">
              <Data ss:Type="Number">3</Data>
            </Cell>
            <Cell ss:MergeAcross="4" ss:StyleID="m234614288">
              <Data ss:Type="String">Электроэнергия для формовых</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="m234614308">
              <Data ss:Type="Number">
                <xsl:value-of select="Calculation/@PowerForFormed"/>
              </Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="19.125" ss:StyleID="s23">
            <Cell ss:StyleID="s22">
              <Data ss:Type="Number">4</Data>
            </Cell>
            <Cell ss:MergeAcross="4" ss:StyleID="s66">
              <Data ss:Type="String">Транспортные расходы</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="m234614468">
              <Data ss:Type="Number">
                <xsl:value-of select="Calculation/@Transport"/>
              </Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="19.125" ss:StyleID="s23">
            <Cell ss:StyleID="s24">
              <Data ss:Type="Number">5</Data>
            </Cell>
            <Cell ss:MergeAcross="4" ss:StyleID="s66">
              <Data ss:Type="String">Основаная заработная плата</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="m234614508">
              <Data ss:Type="Number">
                <xsl:value-of select="Calculation/@MainSalary"/>
              </Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="19.125" ss:StyleID="s23">
            <Cell ss:StyleID="s24">
              <Data ss:Type="Number">6</Data>
            </Cell>
            <Cell ss:MergeAcross="4" ss:StyleID="s66">
              <Data ss:Type="String">Дополнительная заработная плата</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="m240341612">
              <Data ss:Type="Number">
                <xsl:value-of select="Calculation/@AdditionalSalary"/>
              </Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="19.125" ss:StyleID="s23">
            <Cell ss:StyleID="s22">
              <Data ss:Type="Number">7</Data>
            </Cell>
            <Cell ss:MergeAcross="4" ss:StyleID="s66">
              <Data ss:Type="String">Отчисления ЕСН</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="m240341052">
              <Data ss:Type="Number">
                <xsl:value-of select="Calculation/@FixedTax"/>
              </Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="19.125" ss:StyleID="s23">
            <Cell ss:StyleID="s24">
              <Data ss:Type="Number">8</Data>
            </Cell>
            <Cell ss:MergeAcross="4" ss:StyleID="m234614248">
              <Data ss:Type="String">Общецеховые</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="m234614268">
              <Data ss:Type="Number">
                <xsl:value-of select="Calculation/@TotalDivision"/>
              </Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="19.125" ss:StyleID="s23">
            <Cell ss:StyleID="s24">
              <Data ss:Type="Number">9</Data>
            </Cell>
            <Cell ss:MergeAcross="4" ss:StyleID="s66">
              <Data ss:Type="String">Общепроизводственные</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="m240341092">
              <Data ss:Type="Number">
                <xsl:value-of select="Calculation/@TotalManufacture"/>
              </Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="19.125" ss:StyleID="s23">
            <Cell ss:StyleID="s22">
              <Data ss:Type="Number">10</Data>
            </Cell>
            <Cell ss:MergeAcross="4" ss:StyleID="s66">
              <Data ss:Type="String">Коммерческие</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="m240341132">
              <Data ss:Type="Number">
                <xsl:value-of select="Calculation/@Unforseen"/>
              </Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="19.125" ss:StyleID="s23">
            <Cell ss:StyleID="s24">
              <Data ss:Type="Number">11</Data>
            </Cell>
            <Cell ss:MergeAcross="4" ss:StyleID="s66">
              <Data ss:Type="String">Себестоимость</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="m240341532">
              <Data ss:Type="Number">
                <xsl:value-of select="Calculation/@NetCost"/>
              </Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="19.125" ss:StyleID="s23">
            <Cell ss:StyleID="s24">
              <Data ss:Type="Number">12</Data>
            </Cell>
            <Cell ss:MergeAcross="4" ss:StyleID="s66">
              <Data ss:Type="String">Рентабельность</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="m240341572">
              <Data ss:Type="Number">
                <xsl:value-of select="Calculation/@Profitability"/>
              </Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="19.125" ss:StyleID="s23">
            <Cell ss:StyleID="s22">
              <Data ss:Type="Number">13</Data>
            </Cell>
            <Cell ss:MergeAcross="4" ss:StyleID="s66">
              <Data ss:Type="String">Цена</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="m240341012">
              <Data ss:Type="Number">
                <xsl:value-of select="Calculation/@Price"/>
              </Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="19.125" ss:StyleID="s23">
            <Cell ss:StyleID="s24">
              <Data ss:Type="Number">14</Data>
            </Cell>
            <Cell ss:MergeAcross="4" ss:StyleID="s66">
              <Data ss:Type="String">НДС</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="m240341412">
              <Data ss:Type="Number">
                <xsl:value-of select="Calculation/@NdsTax"/>
              </Data>
            </Cell>
          </Row>
          <Row ss:Height="19.5">
            <Cell ss:StyleID="s21"/>
            <Cell ss:MergeAcross="4" ss:StyleID="m240341432">
              <Data ss:Type="String">Всего</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="m240341452">
              <Data ss:Type="Number">
                <xsl:value-of select="Calculation/@Summary"/>
              </Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:StyleID="s19"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="28.125">
            <Cell ss:MergeAcross="1" ss:StyleID="s69">
              <Data ss:Type="String">Составил:</Data>
            </Cell>
            <Cell ss:StyleID="s17"/>
            <Cell ss:StyleID="s17"/>
            <Cell ss:StyleID="s17"/>
            <Cell ss:StyleID="s17"/>
          </Row>
          <Row ss:Index="34">
            <Cell ss:MergeAcross="1" ss:StyleID="s69">
              <Data ss:Type="String">Проверил:</Data>
            </Cell>
            <Cell ss:StyleID="s17"/>
            <Cell ss:StyleID="s17"/>
            <Cell ss:StyleID="s17"/>
            <Cell ss:StyleID="s17"/>
          </Row>
        </Table>
        <WorksheetOptions xmlns="urn:schemas-microsoft-com:office:excel">
          <PageSetup>
            <Header x:Margin="0.3"/>
            <Footer x:Margin="0.3"/>
            <PageMargins x:Bottom="0.75" x:Left="0.7" x:Right="0.7" x:Top="0.75"/>
          </PageSetup>
          <Print>
            <ValidPrinterInfo/>
            <PaperSizeIndex>9</PaperSizeIndex>
            <VerticalResolution>0</VerticalResolution>
          </Print>
          <Selected/>
          <Panes>
            <Pane>
              <Number>3</Number>
              <ActiveRow>10</ActiveRow>
              <ActiveCol>2</ActiveCol>
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

  <xsl:template match="Machines/Machine">
    <Row>
      <Cell ss:StyleID="s22">
        <Data ss:Type="Number">
          <xsl:value-of select="Machine/@InvNumber"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s22">
        <Data ss:Type="Number">
          <xsl:value-of select="@PlateTemperature"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s22">
        <Data ss:Type="Number">
          <xsl:value-of select="@CureTime"/>
        </Data>
      </Cell>
    </Row>
  </xsl:template>

  <xsl:template match="Processes/Process">
    <Row ss:AutoFitHeight="0" ss:Height="14.25">
      <Cell ss:StyleID="s23">
        <Data ss:Type="String">
          <xsl:value-of select="@DisplayName"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s23">
        <Data ss:Type="String">
          <xsl:value-of select="@DisplayOperation"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s23">
        <Data ss:Type="String">
          <xsl:value-of select="@DisplayExecutor"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s23">
        <Data ss:Type="String">
          <xsl:value-of select="@DisplayVarName"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s23">
        <Data ss:Type="Number">
          <xsl:value-of select="@DisplayNormTime"/>
        </Data>
      </Cell>
    </Row>

  </xsl:template>

</xsl:stylesheet>
