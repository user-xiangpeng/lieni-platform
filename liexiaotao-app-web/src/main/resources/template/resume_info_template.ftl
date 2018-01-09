<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<?mso-application progid="Word.Document"?>
<pkg:package xmlns:pkg="http://schemas.microsoft.com/office/2006/xmlPackage">
	<pkg:part pkg:name="/_rels/.rels" pkg:contentType="application/vnd.openxmlformats-package.relationships+xml" pkg:padding="512">
		<pkg:xmlData>
			<Relationships xmlns="http://schemas.openxmlformats.org/package/2006/relationships">
				<Relationship Id="rId3" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/extended-properties" Target="docProps/app.xml"/>
				<Relationship Id="rId2" Type="http://schemas.openxmlformats.org/package/2006/relationships/metadata/core-properties" Target="docProps/core.xml"/>
				<Relationship Id="rId1" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument" Target="word/document.xml"/>
			</Relationships>
		</pkg:xmlData>
	</pkg:part>
	<pkg:part pkg:name="/word/_rels/document.xml.rels" pkg:contentType="application/vnd.openxmlformats-package.relationships+xml" pkg:padding="256">
		<pkg:xmlData>
			<Relationships xmlns="http://schemas.openxmlformats.org/package/2006/relationships">
			<#if headPic??>
				<Relationship Id="rIdx" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/image" Target="media/image2.jpeg"/>
			</#if>	
				<Relationship Id="rId3" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/settings" Target="settings.xml"/>
				<Relationship Id="rId7" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/image" Target="media/image1.png"/>
				<Relationship Id="rId2" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/styles" Target="styles.xml"/>
				<Relationship Id="rId1" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/customXml" Target="../customXml/item1.xml"/>
				<Relationship Id="rId6" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/endnotes" Target="endnotes.xml"/>
				<Relationship Id="rId5" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/footnotes" Target="footnotes.xml"/>
				<Relationship Id="rId10" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/theme" Target="theme/theme1.xml"/>
				<Relationship Id="rId4" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/webSettings" Target="webSettings.xml"/>
				<Relationship Id="rId9" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/fontTable" Target="fontTable.xml"/>
		<#if show??&&show==1>  
			<#if resumeEducationBackgroundListViews??&&resumeEducationBackgroundListViews?size gt 0>
				<#list resumeEducationBackgroundListViews as educationBackGround>
					<#if educationBackGround.degreeIcon??&&educationBackGround.degreeIcon !=''>
				<Relationship Id="rIdy${educationBackGround.id}" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/image" Target="media/imagex${educationBackGround.id}.png"/>
					</#if>
				</#list>
		</#if>
	</#if>		
			</Relationships>
		</pkg:xmlData>
	</pkg:part>
	<pkg:part pkg:name="/word/document.xml" pkg:contentType="application/vnd.openxmlformats-officedocument.wordprocessingml.document.main+xml">
		<pkg:xmlData>
			<w:document xmlns:ve="http://schemas.openxmlformats.org/markup-compatibility/2006" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships" xmlns:m="http://schemas.openxmlformats.org/officeDocument/2006/math" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:wp="http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing" xmlns:w10="urn:schemas-microsoft-com:office:word" xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main" xmlns:wne="http://schemas.microsoft.com/office/word/2006/wordml">
				<w:body>
					<w:p w:rsidR="007F4371" w:rsidRPr="005F379E" w:rsidRDefault="00EE1F2A" w:rsidP="00C24CC8">
						<w:pPr>
							<w:tabs>
								<w:tab w:val="center" w:pos="4876"/>
							</w:tabs>
							<w:spacing w:line="120" w:lineRule="auto"/>
							<w:ind w:right="840"/>
							<w:rPr>
								<w:color w:val="262626" w:themeColor="text1" w:themeTint="D9"/>
								<w:szCs w:val="21"/>
							</w:rPr>
						</w:pPr>
						<w:r w:rsidRPr="00EE1F2A">
							<w:rPr>
								<w:noProof/>
								<w:color w:val="262626" w:themeColor="text1" w:themeTint="D9"/>
								<w:szCs w:val="21"/>
							</w:rPr>
							<w:drawing>
								<wp:inline distT="0" distB="0" distL="0" distR="0">
									<wp:extent cx="823054" cy="310865"/>
									<wp:effectExtent l="19050" t="0" r="0" b="0"/>
									<wp:docPr id="1" name="图片 1" descr="CDDN{PBZEL[O%L(I)FCJJJU"/>
									<wp:cNvGraphicFramePr>
										<a:graphicFrameLocks noChangeAspect="1" xmlns:a="http://schemas.openxmlformats.org/drawingml/2006/main"/>
									</wp:cNvGraphicFramePr>
									<a:graphic xmlns:a="http://schemas.openxmlformats.org/drawingml/2006/main">
										<a:graphicData uri="http://schemas.openxmlformats.org/drawingml/2006/picture">
											<pic:pic xmlns:pic="http://schemas.openxmlformats.org/drawingml/2006/picture">
												<pic:nvPicPr>
													<pic:cNvPr id="0" name="Picture 1" descr="CDDN{PBZEL[O%L(I)FCJJJU"/>
													<pic:cNvPicPr>
														<a:picLocks noChangeAspect="1" noChangeArrowheads="1"/>
													</pic:cNvPicPr>
												</pic:nvPicPr>
												<pic:blipFill>
													<a:blip r:embed="rId7" cstate="print"/>
													<a:srcRect/>
													<a:stretch>
														<a:fillRect/>
													</a:stretch>
												</pic:blipFill>
												<pic:spPr bwMode="auto">
													<a:xfrm>
														<a:off x="0" y="0"/>
														<a:ext cx="837198" cy="316207"/>
													</a:xfrm>
													<a:prstGeom prst="rect">
														<a:avLst/>
													</a:prstGeom>
													<a:noFill/>
													<a:ln w="9525">
														<a:noFill/>
														<a:miter lim="800000"/>
														<a:headEnd/>
														<a:tailEnd/>
													</a:ln>
												</pic:spPr>
											</pic:pic>
										</a:graphicData>
									</a:graphic>
								</wp:inline>
							</w:drawing>
						</w:r>
						<w:r w:rsidR="00AD7492">
							<w:rPr>
								<w:noProof/>
								<w:color w:val="262626" w:themeColor="text1" w:themeTint="D9"/>
								<w:szCs w:val="21"/>
							</w:rPr>
							<w:pict>
								<v:rect id="矩形 2" o:spid="_x0000_s1026" style="position:absolute;left:0;text-align:left;margin-left:0;margin-top:-22.7pt;width:597.6pt;height:166.65pt;z-index:-251658752;visibility:visible;mso-position-horizontal:left;mso-position-horizontal-relative:page;mso-position-vertical-relative:text;mso-width-relative:margin;mso-height-relative:margin;v-text-anchor:middle" o:gfxdata="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&#xA;AAQABADzAAAAJgYAAAAA&#xA;" fillcolor="#2e74b5 [2404]" strokecolor="white [3212]" strokeweight="1pt">
									<v:fill opacity="34695f"/>
									<v:textbox>
										<w:txbxContent>
											<w:p w:rsidR="002E56CC" w:rsidRPr="00CC1038" w:rsidRDefault="002E56CC" w:rsidP="002E56CC">
												<w:pPr>
													<w:jc w:val="center"/>
													<w:rPr>
														<w:i/>
														<w:color w:val="9CC2E5" w:themeColor="accent1" w:themeTint="99"/>
														<w:sz w:val="144"/>
														<w:szCs w:val="144"/>
													</w:rPr>
												</w:pPr>
												<w:r w:rsidRPr="00CC1038">
													<w:rPr>
														<w:rFonts w:hint="eastAsia"/>
														<w:i/>
														<w:color w:val="9CC2E5" w:themeColor="accent1" w:themeTint="99"/>
														<w:sz w:val="144"/>
														<w:szCs w:val="144"/>
													</w:rPr>
													<w:t>LIENI</w:t>
												</w:r>
												<w:r w:rsidR="00CC1038" w:rsidRPr="00CC1038">
													<w:rPr>
														<w:i/>
														<w:color w:val="9CC2E5" w:themeColor="accent1" w:themeTint="99"/>
														<w:sz w:val="144"/>
														<w:szCs w:val="144"/>
													</w:rPr>
													<w:t>.COM</w:t>
												</w:r>
											</w:p>
										</w:txbxContent>
									</v:textbox>
									<w10:wrap anchorx="page"/>
								</v:rect>
							</w:pict>
						</w:r>
					</w:p>
					<w:tbl>
						<w:tblPr>
							<w:tblStyle w:val="a3"/>
							<w:tblW w:w="9879" w:type="dxa"/>
							<w:tblInd w:w="-113" w:type="dxa"/>
							<w:tblBorders>
								<w:top w:val="none" w:sz="0" w:space="0" w:color="auto"/>
								<w:left w:val="none" w:sz="0" w:space="0" w:color="auto"/>
								<w:bottom w:val="none" w:sz="0" w:space="0" w:color="auto"/>
								<w:right w:val="none" w:sz="0" w:space="0" w:color="auto"/>
								<w:insideH w:val="none" w:sz="0" w:space="0" w:color="auto"/>
								<w:insideV w:val="none" w:sz="0" w:space="0" w:color="auto"/>
							</w:tblBorders>
							<w:tblLook w:val="04A0"/>
						</w:tblPr>
						<w:tblGrid>
							<w:gridCol w:w="675"/>
							<w:gridCol w:w="6946"/>
							<w:gridCol w:w="2258"/>
						</w:tblGrid>
						<w:tr w:rsidR="002E56CC" w:rsidRPr="005F379E" w:rsidTr="00CC1038">
							<w:trPr>
								<w:trHeight w:val="1307"/>
							</w:trPr>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="7621" w:type="dxa"/>
									<w:gridSpan w:val="2"/>
								</w:tcPr>
								<w:p w:rsidR="002E56CC" w:rsidRPr="005F379E" w:rsidRDefault="002E56CC" w:rsidP="00EE1F2A">
									<w:pPr>
										<w:tabs>
											<w:tab w:val="right" w:pos="7405"/>
										</w:tabs>
										<w:spacing w:line="120" w:lineRule="auto"/>
										<w:rPr>
											<w:sz w:val="84"/>
											<w:szCs w:val="84"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="005F379E">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="FFFFFF" w:themeColor="background1"/>
											<w:sz w:val="84"/>
											<w:szCs w:val="84"/>
										</w:rPr>
										<w:t><#if infoView??&&infoView.name??&&infoView.name!=''> ${infoView.name} </#if> </w:t>
									</w:r>
								</w:p>
							</w:tc>
							<#if show??&&show==1>
							<#if headPic??>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="2258" w:type="dxa"/>
									<w:vMerge w:val="restart"/>
								</w:tcPr>
								<w:p w:rsidR="002E56CC" w:rsidRPr="005F379E" w:rsidRDefault="001D4EEB" w:rsidP="00C908E3">
									<w:pPr>
										<w:spacing w:line="120" w:lineRule="auto"/>
										<w:rPr>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="005F379E">
										<w:rPr>
											<w:noProof/>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
										<w:drawing>
											<wp:inline distT="0" distB="0" distL="0" distR="0">
												<wp:extent cx="1191491" cy="1191491"/>
												<wp:effectExtent l="0" t="0" r="8890" b="8890"/>
												<wp:docPr id="4" name="图片 4"/>
												<wp:cNvGraphicFramePr>
													<a:graphicFrameLocks noChangeAspect="1" xmlns:a="http://schemas.openxmlformats.org/drawingml/2006/main"/>
												</wp:cNvGraphicFramePr>
												<a:graphic xmlns:a="http://schemas.openxmlformats.org/drawingml/2006/main">
													<a:graphicData uri="http://schemas.openxmlformats.org/drawingml/2006/picture">
														<pic:pic xmlns:pic="http://schemas.openxmlformats.org/drawingml/2006/picture">
															<pic:nvPicPr>
																<pic:cNvPr id="4" name="u=1338014802,1104985623&amp;fm=26&amp;gp=0.jpg"/>
																<pic:cNvPicPr/>
															</pic:nvPicPr>
															<pic:blipFill>
																<a:blip r:embed="rIdx">
																	<a:extLst>
																		<a:ext uri="{28A0092B-C50C-407E-A947-70E740481C1C}">
																			<a14:useLocalDpi val="0" xmlns:a14="http://schemas.microsoft.com/office/drawing/2010/main" xmlns:wps="http://schemas.microsoft.com/office/word/2010/wordprocessingShape" xmlns:wpi="http://schemas.microsoft.com/office/word/2010/wordprocessingInk" xmlns:wpg="http://schemas.microsoft.com/office/word/2010/wordprocessingGroup" xmlns:w16se="http://schemas.microsoft.com/office/word/2015/wordml/symex" xmlns:w15="http://schemas.microsoft.com/office/word/2012/wordml" xmlns:w14="http://schemas.microsoft.com/office/word/2010/wordml" xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main" xmlns:w10="urn:schemas-microsoft-com:office:word" xmlns:wp14="http://schemas.microsoft.com/office/word/2010/wordprocessingDrawing" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006" xmlns:cx8="http://schemas.microsoft.com/office/drawing/2016/5/14/chartex" xmlns:cx7="http://schemas.microsoft.com/office/drawing/2016/5/13/chartex" xmlns:cx6="http://schemas.microsoft.com/office/drawing/2016/5/12/chartex" xmlns:cx5="http://schemas.microsoft.com/office/drawing/2016/5/11/chartex" xmlns:cx4="http://schemas.microsoft.com/office/drawing/2016/5/10/chartex" xmlns:cx3="http://schemas.microsoft.com/office/drawing/2016/5/9/chartex" xmlns:cx2="http://schemas.microsoft.com/office/drawing/2015/10/21/chartex" xmlns:cx1="http://schemas.microsoft.com/office/drawing/2015/9/8/chartex" xmlns:cx="http://schemas.microsoft.com/office/drawing/2014/chartex" xmlns:wpc="http://schemas.microsoft.com/office/word/2010/wordprocessingCanvas" xmlns=""/>
																		</a:ext>
																	</a:extLst>
																</a:blip>
																<a:stretch>
																	<a:fillRect/>
																</a:stretch>
															</pic:blipFill>
															<pic:spPr>
																<a:xfrm>
																	<a:off x="0" y="0"/>
																	<a:ext cx="1205653" cy="1205653"/>
																</a:xfrm>
																<a:prstGeom prst="rect">
																	<a:avLst/>
																</a:prstGeom>
															</pic:spPr>
														</pic:pic>
													</a:graphicData>
												</a:graphic>
											</wp:inline>
										</w:drawing>
									</w:r>
								</w:p>
							</w:tc>
						</#if>
						</#if>	
							<w:bookmarkStart w:id="0" w:name="_GoBack"/>
							<w:bookmarkEnd w:id="0"/>
						</w:tr>
						
						<w:tr w:rsidR="002E56CC" w:rsidRPr="005F379E" w:rsidTr="00CC1038">
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="675" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="002E56CC" w:rsidRPr="005F379E" w:rsidRDefault="002E56CC" w:rsidP="002E56CC">
									<w:pPr>
										<w:spacing w:line="120" w:lineRule="auto"/>
										<w:rPr>
											<w:color w:val="FFFFFF" w:themeColor="background1"/>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="005F379E">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="FFFFFF" w:themeColor="background1"/>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
										 
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="6946" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="002E56CC" w:rsidRPr="005F379E" w:rsidRDefault="003C4545" w:rsidP="00C908E3">
									<w:pPr>
										<w:spacing w:line="120" w:lineRule="auto"/>
										<w:rPr>
											<w:color w:val="FFFFFF" w:themeColor="background1"/>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
									</w:pPr>
									<w:r>
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="FFFFFF" w:themeColor="background1"/>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
										<w:t> <#if show?? && show == 1>手机 ${infoView.phone!''}<#if infoView.email?? && infoView.email !=''>  邮箱 ${infoView.email!''} </#if><#elseif show?? && show == 0>申请通过后显示姓名、手机和邮箱 </#if></w:t>
									</w:r>
									<w:r w:rsidR="0062090D" w:rsidRPr="005F379E">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="FFFFFF" w:themeColor="background1"/>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
										<w:t xml:space="preserve">    </w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="2258" w:type="dxa"/>
									<w:vMerge/>
								</w:tcPr>
								<w:p w:rsidR="002E56CC" w:rsidRPr="005F379E" w:rsidRDefault="002E56CC" w:rsidP="00C908E3">
									<w:pPr>
										<w:spacing w:line="120" w:lineRule="auto"/>
										<w:rPr>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
									</w:pPr>
								</w:p>
							</w:tc>
						</w:tr>
						<w:tr w:rsidR="002E56CC" w:rsidRPr="005F379E" w:rsidTr="00CC1038">
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="675" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="002E56CC" w:rsidRPr="005F379E" w:rsidRDefault="002E56CC" w:rsidP="00C908E3">
									<w:pPr>
										<w:spacing w:line="120" w:lineRule="auto"/>
										<w:rPr>
											<w:color w:val="FFFFFF" w:themeColor="background1"/>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
									</w:pPr>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="6946" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="002E56CC" w:rsidRPr="005F379E" w:rsidRDefault="002E56CC" w:rsidP="00C908E3">
									<w:pPr>
										<w:spacing w:line="120" w:lineRule="auto"/>
										<w:rPr>
											<w:color w:val="FFFFFF" w:themeColor="background1"/>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
									</w:pPr>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="2258" w:type="dxa"/>
									<w:vMerge/>
								</w:tcPr>
								<w:p w:rsidR="002E56CC" w:rsidRPr="005F379E" w:rsidRDefault="002E56CC" w:rsidP="00C908E3">
									<w:pPr>
										<w:spacing w:line="120" w:lineRule="auto"/>
										<w:rPr>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
									</w:pPr>
								</w:p>
							</w:tc>
						</w:tr>
					</w:tbl>
					<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00E92BCE">
						<w:pPr>
							<w:pBdr>
								<w:bottom w:val="single" w:sz="12" w:space="1" w:color="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
							</w:pBdr>
							<w:shd w:val="clear" w:color="auto" w:fill="FFFFFF" w:themeFill="background1"/>
							<w:spacing w:afterLines="50" w:line="240" w:lineRule="atLeast"/>
							<w:ind w:leftChars="-100" w:left="-210"/>
							<w:rPr>
								<w:b/>
								<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
								<w:sz w:val="32"/>
								<w:szCs w:val="32"/>
							</w:rPr>
						</w:pPr>
						<w:r w:rsidRPr="00857B0F">
							<w:rPr>
								<w:rFonts w:hint="eastAsia"/>
								<w:b/>
								<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
								<w:sz w:val="32"/>
								<w:szCs w:val="32"/>
							</w:rPr>
							<w:t>基本信息</w:t>
						</w:r>
					</w:p>
					<w:tbl>
						<w:tblPr>
							<w:tblStyle w:val="a3"/>
							<w:tblW w:w="9860" w:type="dxa"/>
							<w:tblInd w:w="-113" w:type="dxa"/>
							<w:tblBorders>
								<w:top w:val="none" w:sz="0" w:space="0" w:color="auto"/>
								<w:left w:val="none" w:sz="0" w:space="0" w:color="auto"/>
								<w:bottom w:val="none" w:sz="0" w:space="0" w:color="auto"/>
								<w:right w:val="none" w:sz="0" w:space="0" w:color="auto"/>
								<w:insideH w:val="none" w:sz="0" w:space="0" w:color="auto"/>
								<w:insideV w:val="none" w:sz="0" w:space="0" w:color="auto"/>
							</w:tblBorders>
							<w:tblLook w:val="04A0"/>
						</w:tblPr>
						<w:tblGrid>
							<w:gridCol w:w="1559"/>
							<w:gridCol w:w="2693"/>
							<w:gridCol w:w="1559"/>
							<w:gridCol w:w="3970"/>
							<w:gridCol w:w="79"/>
						</w:tblGrid>
						<w:tr w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidTr="00137F7B">
							<w:trPr>
								<w:gridAfter w:val="1"/>
								<w:wAfter w:w="79" w:type="dxa"/>
								<w:trHeight w:val="80"/>
							</w:trPr>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1559" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
										<w:t>性别</w:t>
									</w:r>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:b/>
											<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
										<w:t>//</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="2693" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
										<w:t><#if infoView.gender?? && infoView.gender == 0>女 <#elseif infoView.gender?? && infoView.gender == 1>男 </#if></w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1559" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
										<w:t>年龄</w:t>
									</w:r>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:b/>
											<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
										<w:t>//</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="3970" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
										<w:t>${infoView.age!''}岁</w:t>
									</w:r>
								</w:p>
							</w:tc>
						</w:tr>
						<w:tr w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidTr="00137F7B">
							<w:trPr>
								<w:gridAfter w:val="1"/>
								<w:wAfter w:w="79" w:type="dxa"/>
							</w:trPr>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1559" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
										<w:t>所在城市</w:t>
									</w:r>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:b/>
											<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
										<w:t>//</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="2693" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
										<w:t>${infoView.workAddress!''}</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1559" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
										<w:t>工作年限</w:t>
									</w:r>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:b/>
											<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
										<w:t>//</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="3970" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
										<w:t><#if infoView.workYears?? && infoView.workYears == 0>不足一年 <#elseif infoView.workYears?? && (infoView.workYears>=1&&infoView.workYears<=12)>${infoView.workYears!''}年  <#elseif infoView.workYears?? && (infoView.workYears > 12)>12 年以上</#if></w:t>
									</w:r>
								</w:p>
							</w:tc>
						</w:tr>
						<w:tr w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidTr="00137F7B">
							<w:trPr>
								<w:gridAfter w:val="1"/>
								<w:wAfter w:w="79" w:type="dxa"/>
							</w:trPr>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1559" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
										<w:t>最高学历</w:t>
									</w:r>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:b/>
											<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
										<w:t>//</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="2693" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
										<w:t><#if infoView.degree?? && infoView.degree == 1>大专以下 <#elseif infoView.degree?? && infoView.degree == 2>大专 <#elseif infoView.degree?? && infoView.degree == 3>本科<#elseif infoView.degree?? && infoView.degree == 4>硕士<#elseif infoView.degree?? && infoView.degree == 5>博士<#elseif infoView.degree?? && infoView.degree == 6>博士后<#elseif infoView.degree?? && infoView.degree == 7>MBA </#if></w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1559" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
										<w:t>婚姻状态</w:t>
									</w:r>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:b/>
											<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
										<w:t>//</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="3970" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
										<w:t><#if infoView.maritalStatus?? && infoView.maritalStatus == 1>未婚 <#elseif infoView.maritalStatus?? && infoView.maritalStatus == 2>已婚未育 <#elseif infoView.maritalStatus?? && infoView.maritalStatus == 3>已婚已育 </#if></w:t>
									</w:r>
								</w:p>
							</w:tc>
						</w:tr>
						<w:tr w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidTr="00137F7B">
							<w:trPr>
								<w:gridAfter w:val="1"/>
								<w:wAfter w:w="79" w:type="dxa"/>
							</w:trPr>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1559" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
										<w:t>当前职位</w:t>
									</w:r>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:b/>
											<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
										<w:t>//</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="2693" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
										<w:t>${infoView.currentPosition!''}</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1559" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
										<w:t>当前公司</w:t>
									</w:r>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:b/>
											<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
										<w:t>//</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="3970" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
										<w:t>${infoView.currentCompany!''}</w:t>
									</w:r>
								</w:p>
							</w:tc>
						</w:tr>
						<w:tr w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidTr="00137F7B">
							<w:trPr>
								<w:gridAfter w:val="1"/>
								<w:wAfter w:w="79" w:type="dxa"/>
							</w:trPr>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1559" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
										<w:t>户籍</w:t>
									</w:r>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:b/>
											<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
										<w:t>//</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="2693" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
										<w:t>${infoView.hometownAddress!''}</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1559" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
										<w:t>求职状态</w:t>
									</w:r>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:b/>
											<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
										<w:t>//</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="3970" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
										<w:t><#if infoView.workState?? && infoView.workState == 1>在职，看看新机会 <#elseif infoView.workState?? && infoView.workState == 2>在职，急需新工作，<#elseif infoView.workState?? && infoView.workState == 3>在职，暂无跳槽打算<#elseif infoView.workState?? && infoView.workState == 4>离职，正在找工作 </#if></w:t>
									</w:r>
								</w:p>
							</w:tc>
						</w:tr>
						<w:tr w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidTr="00137F7B">
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1559" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
										<w:t>目前年薪</w:t>
									</w:r>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:b/>
											<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
										<w:t>//</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="8301" w:type="dxa"/>
									<w:gridSpan w:val="4"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:sz w:val="20"/>
											<w:szCs w:val="20"/>
										</w:rPr>
										<w:t>${infoView.currentSalaryStr!''}万（<#if infoView.salaryType?? && infoView.salaryType == 1>税前<#elseif infoView.salaryType?? && infoView.salaryType == 2>税后 </#if> ${infoView.otherSalary!''}）</w:t>
									</w:r>
								</w:p>
							</w:tc>
						</w:tr>
					</w:tbl>
					<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00B140E7">
						<w:pPr>
							<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
							<w:rPr>
								<w:szCs w:val="21"/>
							</w:rPr>
						</w:pPr>
					</w:p>
					<#if jobIntentionView??>
					<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00E92BCE">
						<w:pPr>
							<w:pBdr>
								<w:bottom w:val="single" w:sz="12" w:space="1" w:color="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
							</w:pBdr>
							<w:shd w:val="clear" w:color="auto" w:fill="FFFFFF" w:themeFill="background1"/>
							<w:spacing w:afterLines="50" w:line="240" w:lineRule="atLeast"/>
							<w:ind w:leftChars="-100" w:left="-210"/>
							<w:rPr>
								<w:b/>
								<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
								<w:sz w:val="32"/>
								<w:szCs w:val="32"/>
							</w:rPr>
						</w:pPr>
						<w:r w:rsidRPr="00857B0F">
							<w:rPr>
								<w:rFonts w:hint="eastAsia"/>
								<w:b/>
								<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
								<w:sz w:val="32"/>
								<w:szCs w:val="32"/>
							</w:rPr>
							<w:t>求职意向</w:t>
						</w:r>
					</w:p>
					<w:tbl>
						<w:tblPr>
							<w:tblStyle w:val="a3"/>
							<w:tblW w:w="9781" w:type="dxa"/>
							<w:tblInd w:w="-113" w:type="dxa"/>
							<w:tblLook w:val="04A0"/>
						</w:tblPr>
						<w:tblGrid>
							<w:gridCol w:w="1560"/>
							<w:gridCol w:w="2693"/>
							<w:gridCol w:w="1559"/>
							<w:gridCol w:w="3969"/>
						</w:tblGrid>
						<w:tr w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidTr="00137F7B">
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1560" w:type="dxa"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:before="100" w:beforeAutospacing="1" w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>期望行业</w:t>
									</w:r>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:b/>
											<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>//</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="2693" w:type="dxa"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:before="100" w:beforeAutospacing="1" w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>${jobIntentionView.expectIndustryStr!''}</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1559" w:type="dxa"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:before="100" w:beforeAutospacing="1" w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>期望职位</w:t>
									</w:r>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:b/>
											<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>//</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="3969" w:type="dxa"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:before="100" w:beforeAutospacing="1" w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>${jobIntentionView.expectPositionStr!''}</w:t>
									</w:r>
								</w:p>
							</w:tc>
						</w:tr>
						<w:tr w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidTr="00137F7B">
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1560" w:type="dxa"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>期望城市</w:t>
									</w:r>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:b/>
											<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>//</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="2693" w:type="dxa"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>${jobIntentionView.expectCityStr!''}</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1559" w:type="dxa"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>期望年薪</w:t>
									</w:r>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:b/>
											<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>//</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="3969" w:type="dxa"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>${jobIntentionView.expectSalary!''}</w:t>
									</w:r>
								</w:p>
							</w:tc>
						</w:tr>
						<#if jobIntentionView.otherRequire??&&jobIntentionView.otherRequire!=''>
						<w:tr w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidTr="00137F7B">
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1560" w:type="dxa"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>其他要求</w:t>
									</w:r>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:b/>
											<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>//</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="8221" w:type="dxa"/>
									<w:gridSpan w:val="3"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>${jobIntentionView.otherRequire!''}</w:t>
									</w:r>
								</w:p>
							</w:tc>
						</w:tr>
						</#if>
					</w:tbl>
					</#if>
					<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00B140E7">
						<w:pPr>
							<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
							<w:rPr>
								<w:b/>
								<w:sz w:val="28"/>
								<w:szCs w:val="28"/>
							</w:rPr>
						</w:pPr>
					</w:p>
			<#if educationListViews??&&educationListViews?size gt 0>
					<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00E92BCE">
						<w:pPr>
							<w:pBdr>
								<w:bottom w:val="single" w:sz="12" w:space="1" w:color="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
							</w:pBdr>
							<w:shd w:val="clear" w:color="auto" w:fill="FFFFFF" w:themeFill="background1"/>
							<w:spacing w:afterLines="50" w:line="240" w:lineRule="atLeast"/>
							<w:ind w:leftChars="-100" w:left="-210"/>
							<w:rPr>
								<w:b/>
								<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
								<w:sz w:val="32"/>
								<w:szCs w:val="32"/>
							</w:rPr>
						</w:pPr>
						<w:r w:rsidRPr="00857B0F">
							<w:rPr>
								<w:rFonts w:hint="eastAsia"/>
								<w:b/>
								<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
								<w:sz w:val="32"/>
								<w:szCs w:val="32"/>
							</w:rPr>
							<w:t xml:space="preserve">教育经历 </w:t>
						</w:r>
					</w:p>
					<w:tbl>
						<w:tblPr>
							<w:tblStyle w:val="a3"/>
							<w:tblW w:w="9894" w:type="dxa"/>
							<w:tblInd w:w="-147" w:type="dxa"/>
							<w:tblBorders>
								<w:top w:val="none" w:sz="0" w:space="0" w:color="auto"/>
								<w:left w:val="none" w:sz="0" w:space="0" w:color="auto"/>
								<w:bottom w:val="none" w:sz="0" w:space="0" w:color="auto"/>
								<w:right w:val="none" w:sz="0" w:space="0" w:color="auto"/>
								<w:insideH w:val="none" w:sz="0" w:space="0" w:color="auto"/>
								<w:insideV w:val="none" w:sz="0" w:space="0" w:color="auto"/>
							</w:tblBorders>
							<w:tblLook w:val="04A0"/>
						</w:tblPr>
						<w:tblGrid>
							<w:gridCol w:w="9894"/>
						</w:tblGrid>
					<#if educationListViews??&&educationListViews?size gt 0> <#list educationListViews as listEducation>		
						<w:tr w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidTr="00137F7B">
							<w:trPr>
								<w:trHeight w:val="306"/>
							</w:trPr>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="9894" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="240" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t xml:space="preserve"><#if listEducation.startYear ?? && listEducation.startMonth??>${listEducation.startYear?c}-${listEducation.startMonth?c}</#if>—<#if listEducation.endYear ?? && listEducation.endMonth?? && listEducation.endYear != 9999>${listEducation.endYear?c}-${listEducation.endMonth?c}<#else>至今</#if>  </w:t>
									</w:r>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:b/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>${listEducation.graduationSchool!''}<#if listEducation.nationalUnified?? && listEducation.nationalUnified == true>（统招）<#elseif listEducation.nationalUnified?? && listEducation.nationalUnified == false>（非统招）</#if></w:t>
									</w:r>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>${listEducation.professional!''}  <#if listEducation.degree?? && listEducation.degree == 1>大专以下 <#elseif listEducation.degree?? && listEducation.degree == 2>大专 <#elseif listEducation.degree?? && listEducation.degree == 3>本科<#elseif listEducation.degree?? && listEducation.degree == 4>硕士<#elseif listEducation.degree?? && listEducation.degree == 5>博士<#elseif listEducation.degree?? && listEducation.degree == 6>博士后<#elseif listEducation.degree?? && listEducation.degree == 7>MBA </#if><#if listEducation.degree?? && listEducation.degree == 3 && listEducation.collegeToUniversity?? && listEducation.collegeToUniversity == true>（专升本）</#if> </w:t>
									</w:r>
								</w:p>
							</w:tc>
						</w:tr>
					</#list></#if>	 
					</w:tbl>
				</#if>	
				<#if workExperienceListViews??&&workExperienceListViews?size gt 0>
					<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00B140E7">
						<w:pPr>
							<w:pBdr>
								<w:bottom w:val="single" w:sz="12" w:space="1" w:color="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
							</w:pBdr>
							<w:shd w:val="clear" w:color="auto" w:fill="FFFFFF" w:themeFill="background1"/>
							<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
							<w:ind w:leftChars="-100" w:left="-210"/>
							<w:rPr>
								<w:b/>
								<w:sz w:val="28"/>
								<w:szCs w:val="28"/>
							</w:rPr>
						</w:pPr>
					</w:p>
					<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00E92BCE">
						<w:pPr>
							<w:pBdr>
								<w:bottom w:val="single" w:sz="12" w:space="1" w:color="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
							</w:pBdr>
							<w:shd w:val="clear" w:color="auto" w:fill="FFFFFF" w:themeFill="background1"/>
							<w:spacing w:afterLines="50" w:line="240" w:lineRule="atLeast"/>
							<w:ind w:leftChars="-100" w:left="-210"/>
							<w:rPr>
								<w:b/>
								<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
								<w:sz w:val="32"/>
								<w:szCs w:val="32"/>
							</w:rPr>
						</w:pPr>
						<w:r w:rsidRPr="00857B0F">
							<w:rPr>
								<w:rFonts w:hint="eastAsia"/>
								<w:b/>
								<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
								<w:sz w:val="32"/>
								<w:szCs w:val="32"/>
							</w:rPr>
							<w:t>工作经历</w:t>
						</w:r>
					</w:p>
					<w:tbl>
						<w:tblPr>
							<w:tblStyle w:val="a3"/>
							<w:tblW w:w="0" w:type="auto"/>
							<w:tblInd w:w="-147" w:type="dxa"/>
							<w:tblLook w:val="04A0"/>
						</w:tblPr>
						<w:tblGrid>
							<w:gridCol w:w="1560"/>
							<w:gridCol w:w="709"/>
							<w:gridCol w:w="1984"/>
							<w:gridCol w:w="1701"/>
							<w:gridCol w:w="3935"/>
						</w:tblGrid>
						<#list workExperienceListViews as workExperience>
						<w:tr w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidTr="00137F7B">
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="2269" w:type="dxa"/>
									<w:gridSpan w:val="2"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="240" w:lineRule="atLeast"/>
										<w:rPr>
											<w:b/>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:b/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>${workExperience.startTime!''}—${workExperience.endTime!''}</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1984" w:type="dxa"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="240" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="404040" w:themeColor="text1" w:themeTint="BF"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t><#if workExperience.spendTime??&&workExperience.spendTime!=''>(${workExperience.spendTime!''})<#else>(不足一个月) </#if></w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="5636" w:type="dxa"/>
									<w:gridSpan w:val="2"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="240" w:lineRule="atLeast"/>
										<w:rPr>
											<w:b/>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:b/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>${workExperience.companyName!''}</w:t>
									</w:r>
								</w:p>
							</w:tc>
						</w:tr>
						<w:tr w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidTr="00137F7B">
						<#if workExperience.companyIndustry?? && workExperience.companyIndustry!=''>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1560" w:type="dxa"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r>
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>公司</w:t>
									</w:r>
									<w:r>
										<w:rPr>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>行业</w:t>
									</w:r>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:b/>
											<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>//</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="2693" w:type="dxa"/>
									<w:gridSpan w:val="2"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r>
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>${workExperience.companyIndustry!''}</w:t>
									</w:r>
								</w:p>
							</w:tc>
							</#if>
							<#if workExperience.scale??>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1701" w:type="dxa"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r>
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>公司</w:t>
									</w:r>
									<w:r>
										<w:rPr>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>规模</w:t>
									</w:r>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:b/>
											<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>//</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="3935" w:type="dxa"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r>
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t><#if workExperience.scale?? && workExperience.scale == 1>1-49人<#elseif workExperience.scale?? && workExperience.scale == 2>50-99人<#elseif workExperience.scale?? && workExperience.scale == 3>100-499人<#elseif workExperience.scale?? && workExperience.scale == 4>500-999人<#elseif workExperience.scale?? && workExperience.scale == 5>1000-9999人<#elseif workExperience.scale?? && workExperience.scale == 6>10000人以上 </#if></w:t>
									</w:r>
								</w:p>
							</w:tc>
							</#if>
						</w:tr>
						<w:tr w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidTr="00137F7B">
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1560" w:type="dxa"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>职位名称</w:t>
									</w:r>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:b/>
											<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>//</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="2693" w:type="dxa"/>
									<w:gridSpan w:val="2"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>${workExperience.jobName!''}</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<#if workExperience.department?? && workExperience.department != ''>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1701" w:type="dxa"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>所属部门</w:t>
									</w:r>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:b/>
											<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>//</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="3935" w:type="dxa"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>${workExperience.department!''}</w:t>
									</w:r>
								</w:p>
							</w:tc>
							</#if>
						</w:tr>
						<w:tr w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidTr="00137F7B">
						<#if workExperience.reportPeople?? && workExperience.reportPeople != ''>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1560" w:type="dxa"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>报对象</w:t>
									</w:r>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:b/>
											<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>//</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="2693" w:type="dxa"/>
									<w:gridSpan w:val="2"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>${workExperience.reportPeople!''}</w:t>
									</w:r>
								</w:p>
							</w:tc>
							</#if>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1701" w:type="dxa"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>下属人数</w:t>
									</w:r>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:b/>
											<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>//</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="3935" w:type="dxa"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>${workExperience.underPeople!''}</w:t>
									</w:r>
								</w:p>
							</w:tc>
						</w:tr>
						<#if workExperience.companyIntroduce??&&workExperience.companyIntroduce!=''>
						<w:tr w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidTr="00137F7B">
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1560" w:type="dxa"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>公司简介</w:t>
									</w:r>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:b/>
											<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>//</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="8329" w:type="dxa"/>
									<w:gridSpan w:val="4"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<#list workExperience.companyIntroduce?split("\n") as companyIntroduce>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>${companyIntroduce?replace("<br/>", "\n")?replace("&", "&#38;")?replace(">", "&#62;")?replace("<", "&#60;")?replace("", "")}</w:t>
									</w:r>
								</w:p>
								</#list>
							</w:tc>
						</w:tr>
						</#if>
						<#if workExperience.workContent??&&workExperience.workContent!=''>
						<w:tr w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidTr="00137F7B">
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1560" w:type="dxa"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:lastRenderedPageBreak/>
										<w:t>工作内容</w:t>
									</w:r>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:b/>
											<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>//</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="8329" w:type="dxa"/>
									<w:gridSpan w:val="4"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<#list workExperience.workContent?split("\n") as dutyPerformance>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>${dutyPerformance?replace("<br/>", "\n")?replace("&", "&#38;")?replace(">", "&#62;")?replace("<", "&#60;")?replace("", "")}</w:t>
									</w:r>
								</w:p>
								</#list>
							</w:tc>
						</w:tr>
						</#if>
						<#if workExperience.workAchievement??&&workExperience.workAchievement!=''>
						<w:tr w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidTr="00137F7B">
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1560" w:type="dxa"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>工作业绩</w:t>
									</w:r>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:b/>
											<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>//</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="8329" w:type="dxa"/>
									<w:gridSpan w:val="4"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<#list workExperience.workAchievement?split("\n") as workGrade>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>${workGrade?replace("<br/>", "\n")?replace("&", "&#38;")?replace(">", "&#62;")?replace("<", "&#60;")?replace("", "")}</w:t>
									</w:r>
								</w:p>
								</#list>
							</w:tc>
						</w:tr>
						</#if>
						<#if workExperience.dimissionReason??&&workExperience.dimissionReason!=''>
						<w:tr w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidTr="00137F7B">
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1560" w:type="dxa"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>离职原因</w:t>
									</w:r>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:b/>
											<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>//</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="8329" w:type="dxa"/>
									<w:gridSpan w:val="4"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<#list workExperience.dimissionReason?split("\n") as dimissionReason>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>${dimissionReason?replace("<br/>", "\n")?replace("&", "&#38;")?replace(">", "&#62;")?replace("<", "&#60;")?replace("", "")}</w:t>
									</w:r>
								</w:p>
								</#list>
							</w:tc>
						</w:tr>
						</#if>
						</#list>
					</w:tbl>
					</#if>  
					  
					<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00B140E7">
						<w:pPr>
							<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
							<w:rPr>
								<w:b/>
								<w:sz w:val="28"/>
								<w:szCs w:val="28"/>
							</w:rPr>
						</w:pPr>
					</w:p>
				<#if infoView ??&&infoView.resume??&&infoView.resume!=''>
					<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00E92BCE">
						<w:pPr>
							<w:pBdr>
								<w:bottom w:val="single" w:sz="12" w:space="1" w:color="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
							</w:pBdr>
							<w:shd w:val="clear" w:color="auto" w:fill="FFFFFF" w:themeFill="background1"/>
							<w:spacing w:afterLines="50" w:line="240" w:lineRule="atLeast"/>
							<w:ind w:leftChars="-100" w:left="-210"/>
							<w:rPr>
								<w:b/>
								<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
								<w:sz w:val="32"/>
								<w:szCs w:val="32"/>
							</w:rPr>
						</w:pPr>
						<w:r w:rsidRPr="00857B0F">
							<w:rPr>
								<w:rFonts w:hint="eastAsia"/>
								<w:b/>
								<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
								<w:sz w:val="32"/>
								<w:szCs w:val="32"/>
							</w:rPr>
							<w:t>自我介绍</w:t>
						</w:r>
					</w:p>
					<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00B140E7">
						<w:pPr>
							<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
							<w:rPr>
								<w:szCs w:val="21"/>
							</w:rPr>
						</w:pPr>
						<w:r w:rsidRPr="00857B0F">
							<w:rPr>
								<w:rFonts w:hint="eastAsia"/>
								<w:szCs w:val="21"/>
							</w:rPr>
							<w:t>${infoView.resume!''}</w:t>
						</w:r>
					</w:p>
				</#if>	
					<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00B140E7">
						<w:pPr>
							<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
							<w:rPr>
								<w:b/>
								<w:sz w:val="28"/>
								<w:szCs w:val="28"/>
							</w:rPr>
						</w:pPr>
					</w:p>
			<#if projectExperienceListViews?? && (projectExperienceListViews?size gt 0)>		
					<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00E92BCE">
						<w:pPr>
							<w:pBdr>
								<w:bottom w:val="single" w:sz="12" w:space="1" w:color="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
							</w:pBdr>
							<w:shd w:val="clear" w:color="auto" w:fill="FFFFFF" w:themeFill="background1"/>
							<w:spacing w:afterLines="50" w:line="240" w:lineRule="atLeast"/>
							<w:ind w:leftChars="-100" w:left="-210"/>
							<w:rPr>
								<w:b/>
								<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
								<w:sz w:val="32"/>
								<w:szCs w:val="32"/>
							</w:rPr>
						</w:pPr>
						<w:r w:rsidRPr="00857B0F">
							<w:rPr>
								<w:rFonts w:hint="eastAsia"/>
								<w:b/>
								<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
								<w:sz w:val="32"/>
								<w:szCs w:val="32"/>
							</w:rPr>
							<w:lastRenderedPageBreak/>
							<w:t>项目经验</w:t>
						</w:r>
					</w:p>
				<#list projectExperienceListViews as projectExperience>	
					<w:tbl>
						<w:tblPr>
							<w:tblStyle w:val="a3"/>
							<w:tblW w:w="0" w:type="auto"/>
							<w:tblInd w:w="-147" w:type="dxa"/>
							<w:tblBorders>
								<w:top w:val="none" w:sz="0" w:space="0" w:color="auto"/>
								<w:left w:val="none" w:sz="0" w:space="0" w:color="auto"/>
								<w:bottom w:val="none" w:sz="0" w:space="0" w:color="auto"/>
								<w:right w:val="none" w:sz="0" w:space="0" w:color="auto"/>
								<w:insideH w:val="none" w:sz="0" w:space="0" w:color="auto"/>
								<w:insideV w:val="none" w:sz="0" w:space="0" w:color="auto"/>
							</w:tblBorders>
							<w:tblLook w:val="04A0"/>
						</w:tblPr>
						<w:tblGrid>
							<w:gridCol w:w="1560"/>
							<w:gridCol w:w="709"/>
							<w:gridCol w:w="1984"/>
							<w:gridCol w:w="5636"/>
						</w:tblGrid>
						<w:tr w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidTr="00137F7B">
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="2269" w:type="dxa"/>
									<w:gridSpan w:val="2"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="240" w:lineRule="atLeast"/>
										<w:rPr>
											<w:b/>
											<w:sz w:val="28"/>
											<w:szCs w:val="28"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:b/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>${projectExperience.startTime!''}—${projectExperience.endTime!''}</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1984" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="240" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="404040" w:themeColor="text1" w:themeTint="BF"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t><#if projectExperience.spendTime??&&projectExperience.spendTime!=''>(${projectExperience.spendTime!''})<#else>(不足一个月) </#if></w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="5636" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="240" w:lineRule="atLeast"/>
										<w:rPr>
											<w:b/>
											<w:sz w:val="28"/>
											<w:szCs w:val="28"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:b/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>${projectExperience.projectName!''}</w:t>
									</w:r>
								</w:p>
							</w:tc>
						</w:tr>
						<#if projectExperience??&&projectExperience.projectDesc??&&projectExperience.projectDesc!=''>
						<w:tr w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidTr="00137F7B">
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1560" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>项目描述</w:t>
									</w:r>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:b/>
											<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>//</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="8329" w:type="dxa"/>
									<w:gridSpan w:val="3"/>
								</w:tcPr>
								<#list projectExperience.projectDesc?split("\n") as projectDesc>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>${projectDesc?replace("<br/>", "\n")?replace("&", "&#38;")?replace(">", "&#62;")?replace("<", "&#60;")?replace("", "")}</w:t>
									</w:r>
								</w:p>
								</#list>
							</w:tc>
						</w:tr>
						</#if>
						<#if projectExperience??&&projectExperience.responsibilityDesc??&&projectExperience.responsibilityDesc!=''>
						<w:tr w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidTr="00137F7B">
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1560" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>项目职责</w:t>
									</w:r>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:b/>
											<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>//</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="8329" w:type="dxa"/>
									<w:gridSpan w:val="3"/>
								</w:tcPr>
								<#list projectExperience.responsibilityDesc?split("\n") as responsibilityDesc>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>${responsibilityDesc?replace("<br/>", "\n")?replace("&", "&#38;")?replace(">", "&#62;")?replace("<", "&#60;")?replace("", "")}</w:t>
									</w:r>
								</w:p>
								</#list>
							</w:tc>
						</w:tr>
						</#if>
					</w:tbl>
				</#list>	
			</#if>	
					 
					<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00B140E7">
						<w:pPr>
							<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
							<w:rPr>
								<w:b/>
								<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
								<w:sz w:val="28"/>
								<w:szCs w:val="28"/>
							</w:rPr>
						</w:pPr>
					</w:p>
			<#if languageListViews?? && (languageListViews?size gt 0)>		
					<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00E92BCE">
						<w:pPr>
							<w:pBdr>
								<w:bottom w:val="single" w:sz="12" w:space="1" w:color="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
							</w:pBdr>
							<w:shd w:val="clear" w:color="auto" w:fill="FFFFFF" w:themeFill="background1"/>
							<w:spacing w:afterLines="50" w:line="240" w:lineRule="atLeast"/>
							<w:ind w:leftChars="-100" w:left="-210"/>
							<w:rPr>
								<w:b/>
								<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
								<w:sz w:val="32"/>
								<w:szCs w:val="32"/>
							</w:rPr>
						</w:pPr>
						<w:r w:rsidRPr="00857B0F">
							<w:rPr>
								<w:rFonts w:hint="eastAsia"/>
								<w:b/>
								<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
								<w:sz w:val="32"/>
								<w:szCs w:val="32"/>
							</w:rPr>
							<w:t>语言能力</w:t>
						</w:r>
					</w:p>
					<w:tbl>
						<w:tblPr>
							<w:tblStyle w:val="a3"/>
							<w:tblW w:w="9923" w:type="dxa"/>
							<w:tblInd w:w="-147" w:type="dxa"/>
							<w:tblBorders>
								<w:top w:val="none" w:sz="0" w:space="0" w:color="auto"/>
								<w:left w:val="none" w:sz="0" w:space="0" w:color="auto"/>
								<w:bottom w:val="none" w:sz="0" w:space="0" w:color="auto"/>
								<w:right w:val="none" w:sz="0" w:space="0" w:color="auto"/>
								<w:insideH w:val="none" w:sz="0" w:space="0" w:color="auto"/>
								<w:insideV w:val="none" w:sz="0" w:space="0" w:color="auto"/>
							</w:tblBorders>
							<w:tblLook w:val="04A0"/>
						</w:tblPr>
						<w:tblGrid>
							<w:gridCol w:w="2269"/>
							<w:gridCol w:w="2693"/>
							<w:gridCol w:w="4961"/>
						</w:tblGrid>
				<#list languageListViews as languageAbility>
					<#if languageAbility.language?? && (languageAbility.language == 1 || languageAbility.language == 2)>
						<w:tr w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidTr="00137F7B">
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="2269" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:jc w:val="left"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t><#if languageAbility.language?? && languageAbility.language == 1>英语<#elseif languageAbility.language?? && languageAbility.language == 2>日语</#if></w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="2693" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t><#if languageAbility.languageProficiency?? && languageAbility.languageProficiency == 1>简单沟通<#elseif languageAbility.languageProficiency?? && languageAbility.languageProficiency == 2>读写精通<#elseif languageAbility.languageProficiency?? && languageAbility.languageProficiency == 3>商务洽谈<#elseif languageAbility.languageProficiency?? && languageAbility.languageProficiency == 4>同声翻译</#if></w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="4961" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t><#if languageAbility.languageLevel?? && languageAbility.languageLevel == 1>专业四级<#elseif languageAbility.languageLevel?? && languageAbility.languageLevel == 2>专业八级<#elseif languageAbility.languageLevel?? && languageAbility.languageLevel == 3>CET4<#elseif languageAbility.languageLevel?? && languageAbility.languageLevel == 4>CET6<#elseif languageAbility.languageLevel?? && languageAbility.languageLevel == 5>PETS-1B<#elseif languageAbility.languageLevel?? && languageAbility.languageLevel == 6>PETS-1<#elseif languageAbility.languageLevel?? && languageAbility.languageLevel == 7>PETS-2<#elseif languageAbility.languageLevel?? && languageAbility.languageLevel == 8>PETS-3<#elseif languageAbility.languageLevel?? && languageAbility.languageLevel == 9>PETS-4<#elseif languageAbility.languageLevel?? && languageAbility.languageLevel == 10>PETS-5<#elseif languageAbility.languageLevel?? && languageAbility.languageLevel == 11>N1<#elseif languageAbility.languageLevel?? && languageAbility.languageLevel == 12>N2<#elseif languageAbility.languageLevel?? && languageAbility.languageLevel == 13>N3<#elseif languageAbility.languageLevel?? && languageAbility.languageLevel == 14>N4<#elseif languageAbility.languageLevel?? && languageAbility.languageLevel == 15>N5</#if></w:t>
									</w:r>
								</w:p>
							</w:tc>
						</w:tr>
					<#elseif languageAbility.language?? && languageAbility.language == 3>	
						<w:tr w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidTr="00137F7B">
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="9923" w:type="dxa"/>
									<w:gridSpan w:val="3"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:jc w:val="left"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t><#if languageAbility.otherLanguage?? && languageAbility.otherLanguage != ''>${languageAbility.otherLanguage?replace("<br/>", "\n")?replace("&", "&#38;")?replace(">", "&#62;")?replace("<", "&#60;")?replace("", "")}</#if></w:t>
									</w:r>
								</w:p>
							</w:tc>
						</w:tr>
					</#if>	
				</#list>	
					</w:tbl>
			</#if>		
					<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00B140E7">
						<w:pPr>
							<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
							<w:rPr>
								<w:b/>
								<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
								<w:sz w:val="28"/>
								<w:szCs w:val="28"/>
							</w:rPr>
						</w:pPr>
					</w:p>
		<#if trainingExperienceListViews??&&trainingExperienceListViews?size gt 0>			
					<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00E92BCE">
						<w:pPr>
							<w:pBdr>
								<w:bottom w:val="single" w:sz="12" w:space="1" w:color="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
							</w:pBdr>
							<w:shd w:val="clear" w:color="auto" w:fill="FFFFFF" w:themeFill="background1"/>
							<w:spacing w:afterLines="50" w:line="240" w:lineRule="atLeast"/>
							<w:ind w:leftChars="-100" w:left="-210"/>
							<w:rPr>
								<w:b/>
								<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
								<w:sz w:val="32"/>
								<w:szCs w:val="32"/>
							</w:rPr>
						</w:pPr>
						<w:r w:rsidRPr="00857B0F">
							<w:rPr>
								<w:rFonts w:hint="eastAsia"/>
								<w:b/>
								<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
								<w:sz w:val="32"/>
								<w:szCs w:val="32"/>
							</w:rPr>
							<w:t>培训经历</w:t>
						</w:r>
					</w:p>
				<#list trainingExperienceListViews as trainingExperience>	
					<w:tbl>
						<w:tblPr>
							<w:tblStyle w:val="a3"/>
							<w:tblW w:w="0" w:type="auto"/>
							<w:tblInd w:w="-147" w:type="dxa"/>
							<w:tblBorders>
								<w:top w:val="none" w:sz="0" w:space="0" w:color="auto"/>
								<w:left w:val="none" w:sz="0" w:space="0" w:color="auto"/>
								<w:bottom w:val="none" w:sz="0" w:space="0" w:color="auto"/>
								<w:right w:val="none" w:sz="0" w:space="0" w:color="auto"/>
								<w:insideH w:val="none" w:sz="0" w:space="0" w:color="auto"/>
								<w:insideV w:val="none" w:sz="0" w:space="0" w:color="auto"/>
							</w:tblBorders>
							<w:tblLook w:val="04A0"/>
						</w:tblPr>
						<w:tblGrid>
							<w:gridCol w:w="1560"/>
							<w:gridCol w:w="709"/>
							<w:gridCol w:w="1984"/>
							<w:gridCol w:w="5636"/>
						</w:tblGrid>
						<w:tr w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidTr="00137F7B">
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="2269" w:type="dxa"/>
									<w:gridSpan w:val="2"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="240" w:lineRule="atLeast"/>
										<w:rPr>
											<w:b/>
											<w:sz w:val="28"/>
											<w:szCs w:val="28"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:b/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t><#if trainingExperience.startTime??&&trainingExperience.startTime!=''&&trainingExperience.endTime??&&trainingExperience.endTime!=''>  ${trainingExperience.startTime!''}—${trainingExperience.endTime!''} </#if></w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1984" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="240" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="404040" w:themeColor="text1" w:themeTint="BF"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t><#if trainingExperience.spendTime??&&trainingExperience.spendTime!=''>(${trainingExperience.spendTime!''})<#else>(不足一个月) </#if></w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="5636" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="240" w:lineRule="atLeast"/>
										<w:rPr>
											<w:b/>
											<w:sz w:val="28"/>
											<w:szCs w:val="28"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:b/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t><#if trainingExperience.trainingOrganization?? && trainingExperience.trainingOrganization != ''>${trainingExperience.trainingOrganization?replace("<br/>", "\n")?replace("&", "&#38;")?replace(">", "&#62;")?replace("<", "&#60;")?replace("", "")}</#if></w:t>
									</w:r>
								</w:p>
							</w:tc>
						</w:tr>
						<#if trainingExperience??&&trainingExperience.trainingName??&&trainingExperience.trainingName!=''>
						<w:tr w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidTr="00137F7B">
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1560" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>培训课程</w:t>
									</w:r>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:b/>
											<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>//</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="8329" w:type="dxa"/>
									<w:gridSpan w:val="3"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t><#if trainingExperience.trainingName?? && trainingExperience.trainingName != ''>${trainingExperience.trainingName?replace("<br/>", "\n")?replace("&", "&#38;")?replace(">", "&#62;")?replace("<", "&#60;")?replace("", "")}</#if></w:t>
									</w:r>
								</w:p>
							</w:tc>
						</w:tr>
						</#if>
						<#if trainingExperience??&&trainingExperience.trainingPlace??&&trainingExperience.trainingPlace!=''>
						<w:tr w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidTr="00137F7B">
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1560" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>培训地点</w:t>
									</w:r>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:b/>
											<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>//</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="8329" w:type="dxa"/>
									<w:gridSpan w:val="3"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t><#if trainingExperience.trainingPlace?? && trainingExperience.trainingPlace != ''>${trainingExperience.trainingPlace?replace("<br/>", "\n")?replace("&", "&#38;")?replace(">", "&#62;")?replace("<", "&#60;")?replace("", "")}</#if></w:t>
									</w:r>
								</w:p>
							</w:tc>
						</w:tr>
						</#if>
						<#if trainingExperience??&&trainingExperience.trainingCertificate??&&trainingExperience.trainingCertificate!=''>
						<w:tr w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidTr="00137F7B">
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1560" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>获得证书</w:t>
									</w:r>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:b/>
											<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>//</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="8329" w:type="dxa"/>
									<w:gridSpan w:val="3"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t><#if trainingExperience.trainingCertificate?? && trainingExperience.trainingCertificate != ''>${trainingExperience.trainingCertificate?replace("<br/>", "\n")?replace("&", "&#38;")?replace(">", "&#62;")?replace("<", "&#60;")?replace("", "")}</#if></w:t>
									</w:r>
								</w:p>
							</w:tc>
						</w:tr>
						</#if>
						<#if trainingExperience??&&trainingExperience.trainingDesc??&&trainingExperience.trainingDesc!=''>
						<w:tr w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidTr="00137F7B">
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1560" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>培训描述</w:t>
									</w:r>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:b/>
											<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>//</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="8329" w:type="dxa"/>
									<w:gridSpan w:val="3"/>
								</w:tcPr>
								<#list trainingExperience.trainingDesc?split("\n") as trainingDesc>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>${trainingDesc?replace("<br/>", "\n")?replace("&", "&#38;")?replace(">", "&#62;")?replace("<", "&#60;")?replace("", "")}</w:t>
									</w:r>
								</w:p>
								</#list>
							</w:tc>
						</w:tr>
						</#if>
					</w:tbl>
			</#list>
		</#if>		
					<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00B140E7">
						<w:pPr>
							<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
							<w:rPr>
								<w:szCs w:val="21"/>
							</w:rPr>
						</w:pPr>
					</w:p>
		<#if productListViews?? && (productListViews?size gt 0)>		
					<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00E92BCE">
						<w:pPr>
							<w:pBdr>
								<w:bottom w:val="single" w:sz="12" w:space="1" w:color="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
							</w:pBdr>
							<w:shd w:val="clear" w:color="auto" w:fill="FFFFFF" w:themeFill="background1"/>
							<w:spacing w:afterLines="50" w:line="240" w:lineRule="atLeast"/>
							<w:ind w:leftChars="-100" w:left="-210"/>
							<w:rPr>
								<w:b/>
								<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
								<w:sz w:val="32"/>
								<w:szCs w:val="32"/>
							</w:rPr>
						</w:pPr>
						<w:r w:rsidRPr="00857B0F">
							<w:rPr>
								<w:rFonts w:hint="eastAsia"/>
								<w:b/>
								<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
								<w:sz w:val="32"/>
								<w:szCs w:val="32"/>
							</w:rPr>
							<w:t>附件作品</w:t>
						</w:r>
					</w:p>
			<#list productListViews as product>	
					<w:tbl>
						<w:tblPr>
							<w:tblStyle w:val="a3"/>
							<w:tblW w:w="0" w:type="auto"/>
							<w:tblInd w:w="-147" w:type="dxa"/>
							<w:tblBorders>
								<w:top w:val="none" w:sz="0" w:space="0" w:color="auto"/>
								<w:left w:val="none" w:sz="0" w:space="0" w:color="auto"/>
								<w:bottom w:val="none" w:sz="0" w:space="0" w:color="auto"/>
								<w:right w:val="none" w:sz="0" w:space="0" w:color="auto"/>
								<w:insideH w:val="none" w:sz="0" w:space="0" w:color="auto"/>
								<w:insideV w:val="none" w:sz="0" w:space="0" w:color="auto"/>
							</w:tblBorders>
							<w:tblLook w:val="04A0"/>
						</w:tblPr>
						<w:tblGrid>
							<w:gridCol w:w="1560"/>
							<w:gridCol w:w="8329"/>
						</w:tblGrid>
						<w:tr w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidTr="00137F7B">
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1560" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:sz w:val="18"/>
											<w:szCs w:val="18"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>作品名称</w:t>
									</w:r>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:b/>
											<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>//</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="8329" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:sz w:val="18"/>
											<w:szCs w:val="18"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t><#if product.productName?? && product.productName != ''>${product.productName?replace("<br/>", "\n")?replace("&", "&#38;")?replace(">", "&#62;")?replace("<", "&#60;")?replace("", "")}</#if></w:t>
									</w:r>
								</w:p>
							</w:tc>
						</w:tr>
						<#if product.productType?? && product.productType == 2>	
						<w:tr w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidTr="00137F7B">
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1560" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:sz w:val="18"/>
											<w:szCs w:val="18"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>作品链接</w:t>
									</w:r>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:b/>
											<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>//</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="8329" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:sz w:val="18"/>
											<w:szCs w:val="18"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>${product.productLink!''}</w:t>
									</w:r>
								</w:p>
							</w:tc>
						</w:tr>
						</#if>
						<w:tr w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidTr="00137F7B">
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1560" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:sz w:val="18"/>
											<w:szCs w:val="18"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:lastRenderedPageBreak/>
										<w:t>作品说明</w:t>
									</w:r>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:b/>
											<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>//</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="8329" w:type="dxa"/>
								</w:tcPr>
								<#list product.productExplain?split("\n") as productExplain>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:sz w:val="18"/>
											<w:szCs w:val="18"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>${productExplain?replace("<br/>", "\n")?replace("&", "&#38;")?replace(">", "&#62;")?replace("<", "&#60;")?replace("", "")}</w:t>
									</w:r>
								</w:p>
								</#list>
							</w:tc>
						</w:tr>
					</w:tbl>
					<w:p w:rsidR="00B140E7" w:rsidRDefault="00B140E7" w:rsidP="00B140E7">
						<w:pPr>
							<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
							<w:rPr>
								<w:szCs w:val="21"/>
							</w:rPr>
						</w:pPr>
					</w:p>
			</#list>
		</#if>		 
					 
					<w:p w:rsidR="00B140E7" w:rsidRDefault="00B140E7" w:rsidP="00B140E7">
						<w:pPr>
							<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
							<w:rPr>
								<w:szCs w:val="21"/>
							</w:rPr>
						</w:pPr>
					</w:p>
		<#if (show??&&show==0) || resumeReportListViews??> 			
					<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00E92BCE">
						<w:pPr>
							<w:pBdr>
								<w:bottom w:val="single" w:sz="12" w:space="1" w:color="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
							</w:pBdr>
							<w:shd w:val="clear" w:color="auto" w:fill="FFFFFF" w:themeFill="background1"/>
							<w:spacing w:afterLines="50" w:line="240" w:lineRule="atLeast"/>
							<w:ind w:leftChars="-100" w:left="-210"/>
							<w:rPr>
								<w:b/>
								<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
								<w:sz w:val="32"/>
								<w:szCs w:val="32"/>
							</w:rPr>
						</w:pPr>
						<w:r>
							<w:rPr>
								<w:rFonts w:hint="eastAsia"/>
								<w:b/>
								<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
								<w:sz w:val="32"/>
								<w:szCs w:val="32"/>
							</w:rPr>
							<w:t>猎头</w:t>
						</w:r>
						<w:r>
							<w:rPr>
								<w:b/>
								<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
								<w:sz w:val="32"/>
								<w:szCs w:val="32"/>
							</w:rPr>
							<w:t>评语</w:t>
						</w:r>
					</w:p>
					<w:tbl>
						<w:tblPr>
							<w:tblStyle w:val="a3"/>
							<w:tblW w:w="0" w:type="auto"/>
							<w:tblInd w:w="-147" w:type="dxa"/>
							<w:tblBorders>
								<w:top w:val="none" w:sz="0" w:space="0" w:color="auto"/>
								<w:left w:val="none" w:sz="0" w:space="0" w:color="auto"/>
								<w:bottom w:val="none" w:sz="0" w:space="0" w:color="auto"/>
								<w:right w:val="none" w:sz="0" w:space="0" w:color="auto"/>
								<w:insideH w:val="none" w:sz="0" w:space="0" w:color="auto"/>
								<w:insideV w:val="none" w:sz="0" w:space="0" w:color="auto"/>
							</w:tblBorders>
							<w:tblLook w:val="04A0"/>
						</w:tblPr>
						<w:tblGrid>
							<w:gridCol w:w="1815"/>
							<w:gridCol w:w="8074"/>
						</w:tblGrid>
				<#if (show??&&show==0) || resumeReportListViews.jobAnalysis?? && resumeReportListViews.jobAnalysis !=''>		
						<w:tr w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidTr="00137F7B">
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1815" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:sz w:val="18"/>
											<w:szCs w:val="18"/>
										</w:rPr>
									</w:pPr>
									<w:r>
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>职业经历分析</w:t>
									</w:r>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:b/>
											<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>//</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="8074" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:sz w:val="18"/>
											<w:szCs w:val="18"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t><#if show?? && show == 1> <#if resumeReportListViews??> ${resumeReportListViews.jobAnalysis!''}</#if> <#elseif show?? && show == 0>申请通过后显示</#if> </w:t>
									</w:r>
								</w:p>
							</w:tc>
						</w:tr>
				  </#if>
				  <#if (show??&&show==0) || resumeReportListViews.jobAnalysis?? && resumeReportListViews.professionalAnalysis !=''>
						<w:tr w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidTr="00137F7B">
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1815" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:sz w:val="18"/>
											<w:szCs w:val="18"/>
										</w:rPr>
									</w:pPr>
									<w:r>
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>专业</w:t>
									</w:r>
									<w:r>
										<w:rPr>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>能力分析</w:t>
									</w:r>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:b/>
											<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>//</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="8074" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:sz w:val="18"/>
											<w:szCs w:val="18"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t><#if show?? && show == 1> <#if resumeReportListViews??> ${resumeReportListViews.professionalAnalysis!''}</#if> <#elseif show?? && show == 0>申请通过后显示</#if> </w:t>
									</w:r>
								</w:p>
							</w:tc>
						</w:tr>
					</#if>
					<#if (show??&&show==0) || resumeReportListViews.jobAnalysis?? && resumeReportListViews.remunerationAnalysis !=''>  
						<w:tr w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidTr="00137F7B">
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1815" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:sz w:val="18"/>
											<w:szCs w:val="18"/>
										</w:rPr>
									</w:pPr>
									<w:r>
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>薪酬</w:t>
									</w:r>
									<w:r>
										<w:rPr>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>福利分析</w:t>
									</w:r>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:b/>
											<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>//</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="8074" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:sz w:val="18"/>
											<w:szCs w:val="18"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t><#if show?? && show == 1> <#if resumeReportListViews??> ${resumeReportListViews.remunerationAnalysis!''}</#if> <#elseif show?? && show == 0>申请通过后显示</#if> </w:t>
									</w:r>
								</w:p>
							</w:tc>
						</w:tr>
					</#if>
					<#if (show??&&show==0) || resumeReportListViews.jobAnalysis?? && resumeReportListViews.jobdevelopmentAnalysis !=''>  
						<w:tr w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidTr="00137F7B">
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1815" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:sz w:val="18"/>
											<w:szCs w:val="18"/>
										</w:rPr>
									</w:pPr>
									<w:r>
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>职业</w:t>
									</w:r>
									<w:r>
										<w:rPr>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>发展方向</w:t>
									</w:r>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:b/>
											<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>//</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="8074" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:sz w:val="18"/>
											<w:szCs w:val="18"/>
										</w:rPr>
									</w:pPr>
									<w:r>
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t><#if show?? && show == 1> <#if resumeReportListViews??> ${resumeReportListViews.jobdevelopmentAnalysis!''}</#if> <#elseif show?? && show == 0>申请通过后显示</#if> </w:t>
									</w:r>
								</w:p>
							</w:tc>
						</w:tr>
					</#if>
					<#if (show??&&show==0) || resumeReportListViews.jobAnalysis?? && resumeReportListViews.characterAnalysis !=''>	
						<w:tr w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidTr="00137F7B">
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1815" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:sz w:val="18"/>
											<w:szCs w:val="18"/>
										</w:rPr>
									</w:pPr>
									<w:r>
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>性格</w:t>
									</w:r>
									<w:r>
										<w:rPr>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>特点分析</w:t>
									</w:r>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:b/>
											<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>//</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="8074" w:type="dxa"/>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:sz w:val="18"/>
											<w:szCs w:val="18"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t><#if show?? && show == 1> <#if resumeReportListViews??> ${resumeReportListViews.characterAnalysis!''}</#if> <#elseif show?? && show == 0>申请通过后显示</#if> </w:t>
									</w:r>
								</w:p>
							</w:tc>
						</w:tr>
					</#if>
					<#if (show??&&show==0) || resumeReportListViews.jobAnalysis?? && resumeReportListViews.familyAnalysis !=''>	
						<w:tr w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidTr="00137F7B">
							<w:tblPrEx>
								<w:tblBorders>
									<w:top w:val="single" w:sz="4" w:space="0" w:color="auto"/>
									<w:left w:val="single" w:sz="4" w:space="0" w:color="auto"/>
									<w:bottom w:val="single" w:sz="4" w:space="0" w:color="auto"/>
									<w:right w:val="single" w:sz="4" w:space="0" w:color="auto"/>
									<w:insideH w:val="single" w:sz="4" w:space="0" w:color="auto"/>
									<w:insideV w:val="single" w:sz="4" w:space="0" w:color="auto"/>
								</w:tblBorders>
							</w:tblPrEx>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1815" w:type="dxa"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:sz w:val="18"/>
											<w:szCs w:val="18"/>
										</w:rPr>
									</w:pPr>
									<w:r>
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>家庭</w:t>
									</w:r>
									<w:r>
										<w:rPr>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>状况分析</w:t>
									</w:r>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:b/>
											<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>//</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="8074" w:type="dxa"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:sz w:val="18"/>
											<w:szCs w:val="18"/>
										</w:rPr>
									</w:pPr>
									<w:r>
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t><#if show?? && show == 1> <#if resumeReportListViews??> ${resumeReportListViews.familyAnalysis!''}</#if> <#elseif show?? && show == 0>申请通过后显示</#if> </w:t>
									</w:r>
								</w:p>
							</w:tc>
						</w:tr>
					</#if>
					<#if (show??&&show==0) || resumeReportListViews.jobAnalysis?? && resumeReportListViews.advantageAnalysis !=''>	
						<w:tr w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidTr="00137F7B">
							<w:tblPrEx>
								<w:tblBorders>
									<w:top w:val="single" w:sz="4" w:space="0" w:color="auto"/>
									<w:left w:val="single" w:sz="4" w:space="0" w:color="auto"/>
									<w:bottom w:val="single" w:sz="4" w:space="0" w:color="auto"/>
									<w:right w:val="single" w:sz="4" w:space="0" w:color="auto"/>
									<w:insideH w:val="single" w:sz="4" w:space="0" w:color="auto"/>
									<w:insideV w:val="single" w:sz="4" w:space="0" w:color="auto"/>
								</w:tblBorders>
							</w:tblPrEx>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1815" w:type="dxa"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:sz w:val="18"/>
											<w:szCs w:val="18"/>
										</w:rPr>
									</w:pPr>
									<w:r>
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>优势</w:t>
									</w:r>
									<w:r>
										<w:rPr>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>劣势分析</w:t>
									</w:r>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:b/>
											<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>//</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="8074" w:type="dxa"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:sz w:val="18"/>
											<w:szCs w:val="18"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t><#if show?? && show == 1> <#if resumeReportListViews??> ${resumeReportListViews.advantageAnalysis!''}</#if> <#elseif show?? && show == 0>申请通过后显示</#if> </w:t>
									</w:r>
								</w:p>
							</w:tc>
						</w:tr>
				    </#if>
					</w:tbl>
			  </#if>		
					<w:p w:rsidR="00B140E7" w:rsidRDefault="00B140E7" w:rsidP="00E92BCE">
						<w:pPr>
							<w:pBdr>
								<w:bottom w:val="single" w:sz="12" w:space="1" w:color="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
							</w:pBdr>
							<w:shd w:val="clear" w:color="auto" w:fill="FFFFFF" w:themeFill="background1"/>
							<w:spacing w:afterLines="50" w:line="240" w:lineRule="atLeast"/>
							<w:ind w:leftChars="-100" w:left="-210"/>
							<w:rPr>
								<w:b/>
								<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
								<w:sz w:val="32"/>
								<w:szCs w:val="32"/>
							</w:rPr>
						</w:pPr>
					</w:p>
			<#if show??&&show==1>  
				<#if resumeWorkBackgroundListView??&&resumeWorkBackgroundListView?size gt 0>
					<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00E92BCE">
						<w:pPr>
							<w:pBdr>
								<w:bottom w:val="single" w:sz="12" w:space="1" w:color="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
							</w:pBdr>
							<w:shd w:val="clear" w:color="auto" w:fill="FFFFFF" w:themeFill="background1"/>
							<w:spacing w:afterLines="50" w:line="240" w:lineRule="atLeast"/>
							<w:ind w:leftChars="-100" w:left="-210"/>
							<w:rPr>
								<w:b/>
								<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
								<w:sz w:val="32"/>
								<w:szCs w:val="32"/>
							</w:rPr>
						</w:pPr>
						<w:r>
							<w:rPr>
								<w:rFonts w:hint="eastAsia"/>
								<w:b/>
								<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
								<w:sz w:val="32"/>
								<w:szCs w:val="32"/>
							</w:rPr>
							<w:t>工作背</w:t>
						</w:r>
						<w:r>
							<w:rPr>
								<w:b/>
								<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
								<w:sz w:val="32"/>
								<w:szCs w:val="32"/>
							</w:rPr>
							<w:t>调</w:t>
						</w:r>
					</w:p>
				<#list resumeWorkBackgroundListView as workBackGround>	
					<w:tbl>
						<w:tblPr>
							<w:tblStyle w:val="a3"/>
							<w:tblW w:w="0" w:type="auto"/>
							<w:tblInd w:w="-147" w:type="dxa"/>
							<w:tblLook w:val="04A0"/>
						</w:tblPr>
						<w:tblGrid>
							<w:gridCol w:w="1531"/>
							<w:gridCol w:w="738"/>
							<w:gridCol w:w="538"/>
							<w:gridCol w:w="1446"/>
							<w:gridCol w:w="538"/>
							<w:gridCol w:w="1560"/>
							<w:gridCol w:w="1955"/>
							<w:gridCol w:w="1583"/>
							<w:gridCol w:w="226"/>
						</w:tblGrid>
						<w:tr w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidTr="00137F7B">
							<w:trPr>
								<w:gridAfter w:val="1"/>
								<w:wAfter w:w="226" w:type="dxa"/>
							</w:trPr>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="2269" w:type="dxa"/>
									<w:gridSpan w:val="2"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="240" w:lineRule="atLeast"/>
										<w:rPr>
											<w:b/>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:b/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>${workBackGround.startTime!''}—${workBackGround.endTime!''}</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1984" w:type="dxa"/>
									<w:gridSpan w:val="2"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="240" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="404040" w:themeColor="text1" w:themeTint="BF"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t><#if workBackGround.spendTime??&&workBackGround.spendTime!=''>(${workBackGround.spendTime!''})<#else>(不足一个月) </#if></w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="5636" w:type="dxa"/>
									<w:gridSpan w:val="4"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00857B0F" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="240" w:lineRule="atLeast"/>
										<w:rPr>
											<w:b/>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:b/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>${workBackGround.company!''}</w:t>
									</w:r>
									<w:r w:rsidRPr="0049268E">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:b/>
											<w:color w:val="00B050"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>已核查</w:t>
									</w:r>
								</w:p>
							</w:tc>
						</w:tr>
			  <#if workBackGround.bgRespondents??&&workBackGround.bgRespondents?size gt 0>
						<#list workBackGround.bgRespondents as bgRespondents>
						<w:tr w:rsidR="00B140E7" w:rsidTr="00137F7B">
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1531" w:type="dxa"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r>
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>调查</w:t>
									</w:r>
									<w:r>
										<w:rPr>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>对象</w:t>
									</w:r>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:b/>
											<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>//</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1276" w:type="dxa"/>
									<w:gridSpan w:val="2"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r>
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>${bgRespondents.respondentName!''}</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1984" w:type="dxa"/>
									<w:gridSpan w:val="2"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRPr="00154A4E" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:color w:val="808080" w:themeColor="background1" w:themeShade="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r w:rsidRPr="00154A4E">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="808080" w:themeColor="background1" w:themeShade="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>调查</w:t>
									</w:r>
									<w:r w:rsidRPr="00154A4E">
										<w:rPr>
											<w:color w:val="808080" w:themeColor="background1" w:themeShade="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>对象职位</w:t>
									</w:r>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:b/>
											<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>//</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1560" w:type="dxa"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r>
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>${bgRespondents.respondentJob!''}</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1955" w:type="dxa"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r>
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="808080" w:themeColor="background1" w:themeShade="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>与</w:t>
									</w:r>
									<w:r>
										<w:rPr>
											<w:color w:val="808080" w:themeColor="background1" w:themeShade="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>调查人关系</w:t>
									</w:r>
									<w:r w:rsidRPr="00857B0F">
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:b/>
											<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>//</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1809" w:type="dxa"/>
									<w:gridSpan w:val="2"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r>
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>${bgRespondents.relation!''}</w:t>
									</w:r>
								</w:p>
							</w:tc>
						</w:tr>
						<w:tr w:rsidR="00B140E7" w:rsidTr="00137F7B">
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1531" w:type="dxa"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r>
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>调查</w:t>
									</w:r>
									<w:r>
										<w:rPr>
											<w:color w:val="7F7F7F" w:themeColor="text1" w:themeTint="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>结果：</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="8584" w:type="dxa"/>
									<w:gridSpan w:val="8"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p w:rsidR="00B140E7" w:rsidRDefault="00B140E7" w:rsidP="00137F7B">
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r>
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>${bgRespondents.feedbackDesc!''}</w:t>
									</w:r>
								</w:p>
							</w:tc>
						</w:tr>
				     </#list>	
		        	</#if>		
					</w:tbl>
				 </#list>	
			</#if>
			<#elseif show??&&show==0>  
					  <w:p>
						<w:pPr>
							<w:pBdr>
								<w:bottom w:val="single" w:color="2E75B5" w:themeColor="accent1" w:themeShade="BF" w:sz="12" w:space="1"/>
							</w:pBdr>
							<w:shd w:val="clear" w:color="auto" w:fill="FFFFFF" w:themeFill="background1"/>
							<w:spacing w:after="156" w:afterLines="50" w:line="240" w:lineRule="atLeast"/>
							<w:ind w:left="-210" w:leftChars="-100"/>
							<w:rPr>
								<w:rFonts w:hint="eastAsia"/>
								<w:b/>
								<w:color w:val="2E75B5" w:themeColor="accent1" w:themeShade="BF"/>
								<w:sz w:val="32"/>
								<w:szCs w:val="32"/>
							</w:rPr>
						</w:pPr>
						<w:r>
							<w:rPr>
								<w:rFonts w:hint="eastAsia"/>
								<w:b/>
								<w:color w:val="2E75B5" w:themeColor="accent1" w:themeShade="BF"/>
								<w:sz w:val="32"/>
								<w:szCs w:val="32"/>
							</w:rPr>
							<w:t>工作背</w:t>
						</w:r>
						<w:r>
							<w:rPr>
								<w:b/>
								<w:color w:val="2E75B5" w:themeColor="accent1" w:themeShade="BF"/>
								<w:sz w:val="32"/>
								<w:szCs w:val="32"/>
							</w:rPr>
							<w:t>调</w:t>
						</w:r>
					</w:p>
					
						<w:tbl>
						<w:tblPr>
							<w:tblStyle w:val="8"/>
							<w:tblW w:w="9889" w:type="dxa"/>
							<w:tblInd w:w="-147" w:type="dxa"/>
							<w:tblBorders>
								<w:top w:val="single" w:color="auto" w:sz="4" w:space="0"/>
								<w:left w:val="single" w:color="auto" w:sz="4" w:space="0"/>
								<w:bottom w:val="single" w:color="auto" w:sz="4" w:space="0"/>
								<w:right w:val="single" w:color="auto" w:sz="4" w:space="0"/>
								<w:insideH w:val="single" w:color="auto" w:sz="4" w:space="0"/>
								<w:insideV w:val="single" w:color="auto" w:sz="4" w:space="0"/>
							</w:tblBorders>
							<w:tblLayout w:type="fixed"/>
							<w:tblCellMar>
								<w:top w:w="0" w:type="dxa"/>
								<w:left w:w="108" w:type="dxa"/>
								<w:bottom w:w="0" w:type="dxa"/>
								<w:right w:w="108" w:type="dxa"/>
							</w:tblCellMar>
						</w:tblPr>
						<w:tblGrid>
							<w:gridCol w:w="2269"/>
							<w:gridCol w:w="1984"/>
							<w:gridCol w:w="5636"/>
						</w:tblGrid>
						<w:tr>
							<w:tblPrEx>
								<w:tblBorders>
									<w:top w:val="single" w:color="auto" w:sz="4" w:space="0"/>
									<w:left w:val="single" w:color="auto" w:sz="4" w:space="0"/>
									<w:bottom w:val="single" w:color="auto" w:sz="4" w:space="0"/>
									<w:right w:val="single" w:color="auto" w:sz="4" w:space="0"/>
									<w:insideH w:val="single" w:color="auto" w:sz="4" w:space="0"/>
									<w:insideV w:val="single" w:color="auto" w:sz="4" w:space="0"/>
								</w:tblBorders>
								<w:tblLayout w:type="fixed"/>
								<w:tblCellMar>
									<w:top w:w="0" w:type="dxa"/>
									<w:left w:w="108" w:type="dxa"/>
									<w:bottom w:w="0" w:type="dxa"/>
									<w:right w:w="108" w:type="dxa"/>
								</w:tblCellMar>
							</w:tblPrEx>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="2269" w:type="dxa"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p>
									<w:pPr>
										<w:spacing w:after="0" w:line="240" w:lineRule="atLeast"/>
										<w:rPr>
											<w:b/>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1984" w:type="dxa"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p>
									<w:pPr>
										<w:spacing w:after="0" w:line="240" w:lineRule="atLeast"/>
										<w:rPr>
											<w:color w:val="A5A5A5" w:themeColor="background1" w:themeShade="A6"/>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="5636" w:type="dxa"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p>
									<w:pPr>
										<w:spacing w:after="0" w:line="240" w:lineRule="atLeast"/>
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:b/>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r>
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:b/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>申请后</w:t>
									</w:r>
									<w:r>
										<w:rPr>
											<w:b/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>显示</w:t>
									</w:r>
									<w:r>
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:b/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>核查</w:t>
									</w:r>
									<w:r>
										<w:rPr>
											<w:b/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>结果</w:t>
									</w:r>
								</w:p>
							</w:tc>
						</w:tr>
					</w:tbl>
		</#if>
					<w:p w:rsidR="00B140E7" w:rsidRDefault="00B140E7" w:rsidP="00E92BCE">
						<w:pPr>
							<w:pBdr>
								<w:bottom w:val="single" w:sz="12" w:space="1" w:color="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
							</w:pBdr>
							<w:shd w:val="clear" w:color="auto" w:fill="FFFFFF" w:themeFill="background1"/>
							<w:spacing w:afterLines="50" w:line="240" w:lineRule="atLeast"/>
							<w:ind w:leftChars="-100" w:left="-210"/>
							<w:rPr>
								<w:b/>
								<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
								<w:sz w:val="32"/>
								<w:szCs w:val="32"/>
							</w:rPr>
						</w:pPr>
					</w:p>
					<#if show??&&show==1>  
						<#if resumeEducationBackgroundListViews??&&resumeEducationBackgroundListViews?size gt 0>
					<w:p>
						<w:pPr>
							<w:pBdr>
								<w:bottom w:val="single" w:color="2E75B5" w:themeColor="accent1" w:themeShade="BF" w:sz="12" w:space="1"/>
							</w:pBdr>
							<w:shd w:val="clear" w:color="auto" w:fill="FFFFFF" w:themeFill="background1"/>
							<w:spacing w:after="156" w:afterLines="50" w:line="240" w:lineRule="atLeast"/>
							<w:ind w:left="-210" w:leftChars="-100"/>
							<w:rPr>
								<w:rFonts w:hint="eastAsia"/>
								<w:b/>
								<w:color w:val="2E75B5" w:themeColor="accent1" w:themeShade="BF"/>
								<w:sz w:val="32"/>
								<w:szCs w:val="32"/>
							</w:rPr>
						</w:pPr>
						<w:r>
							<w:rPr>
								<w:rFonts w:hint="eastAsia"/>
								<w:b/>
								<w:color w:val="2E75B5" w:themeColor="accent1" w:themeShade="BF"/>
								<w:sz w:val="32"/>
								<w:szCs w:val="32"/>
							</w:rPr>
							<w:t>教育背</w:t>
						</w:r>
						<w:r>
							<w:rPr>
								<w:b/>
								<w:color w:val="2E75B5" w:themeColor="accent1" w:themeShade="BF"/>
								<w:sz w:val="32"/>
								<w:szCs w:val="32"/>
							</w:rPr>
							<w:t>调</w:t>
						</w:r>
					</w:p>
					
					<#list resumeEducationBackgroundListViews as educationBackGround>
					<w:tbl>
						<w:tblPr>
							<w:tblStyle w:val="8"/>
							<w:tblW w:w="10115" w:type="dxa"/>
							<w:tblInd w:w="-147" w:type="dxa"/>
							<w:tblBorders>
								<w:top w:val="none" w:color="auto" w:sz="0" w:space="0"/>
								<w:left w:val="none" w:color="auto" w:sz="0" w:space="0"/>
								<w:bottom w:val="none" w:color="auto" w:sz="0" w:space="0"/>
								<w:right w:val="none" w:color="auto" w:sz="0" w:space="0"/>
								<w:insideH w:val="none" w:color="auto" w:sz="0" w:space="0"/>
								<w:insideV w:val="none" w:color="auto" w:sz="0" w:space="0"/>
							</w:tblBorders>
							<w:tblLayout w:type="fixed"/>
							<w:tblCellMar>
								<w:top w:w="0" w:type="dxa"/>
								<w:left w:w="108" w:type="dxa"/>
								<w:bottom w:w="0" w:type="dxa"/>
								<w:right w:w="108" w:type="dxa"/>
							</w:tblCellMar>
						</w:tblPr>
						<w:tblGrid>
							<w:gridCol w:w="1531"/>
							<w:gridCol w:w="3260"/>
							<w:gridCol w:w="2268"/>
							<w:gridCol w:w="2830"/>
							<w:gridCol w:w="226"/>
						</w:tblGrid>
						<w:tr>
							<w:tblPrEx>
								<w:tblBorders>
									<w:top w:val="none" w:color="auto" w:sz="0" w:space="0"/>
									<w:left w:val="none" w:color="auto" w:sz="0" w:space="0"/>
									<w:bottom w:val="none" w:color="auto" w:sz="0" w:space="0"/>
									<w:right w:val="none" w:color="auto" w:sz="0" w:space="0"/>
									<w:insideH w:val="none" w:color="auto" w:sz="0" w:space="0"/>
									<w:insideV w:val="none" w:color="auto" w:sz="0" w:space="0"/>
								</w:tblBorders>
								<w:tblLayout w:type="fixed"/>
								<w:tblCellMar>
									<w:top w:w="0" w:type="dxa"/>
									<w:left w:w="108" w:type="dxa"/>
									<w:bottom w:w="0" w:type="dxa"/>
									<w:right w:w="108" w:type="dxa"/>
								</w:tblCellMar>
							</w:tblPrEx>
							<w:trPr>
								<w:gridAfter w:val="1"/>
								<w:wAfter w:w="226" w:type="dxa"/>
								<w:trHeight w:val="306" w:hRule="atLeast"/>
							</w:trPr>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="9889" w:type="dxa"/>
									<w:gridSpan w:val="4"/>
								</w:tcPr>
								<w:p>
									<w:pPr>
										<w:spacing w:after="0" w:line="240" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r>
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t xml:space="preserve"><#if educationBackGround.startYear ?? && educationBackGround.startMonth??>${educationBackGround.startYear?c}-${educationBackGround.startMonth?c}</#if>—<#if educationBackGround.endYear ?? && educationBackGround.endMonth?? && educationBackGround.endYear != 9999>${educationBackGround.endYear?c}-${educationBackGround.endMonth?c}<#else>至今</#if>  </w:t>
									</w:r>
									<w:r>
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:b/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>${educationBackGround.graduationSchool!''} </w:t>
									</w:r>
									<w:r>
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t xml:space="preserve">  ${educationBackGround.professional!''}  <#if educationBackGround.degree?? && educationBackGround.degree == 1>大专以下 <#elseif educationBackGround.degree?? && educationBackGround.degree == 2>大专 <#elseif educationBackGround.degree?? && educationBackGround.degree == 3>本科<#elseif educationBackGround.degree?? && educationBackGround.degree == 4>硕士<#elseif educationBackGround.degree?? && educationBackGround.degree == 5>博士<#elseif educationBackGround.degree?? && educationBackGround.degree == 6>博士后<#elseif educationBackGround.degree?? && educationBackGround.degree == 7>MBA </#if> </w:t>
									</w:r>
									<w:r>
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:b/>
											<w:color w:val="00B050"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>已核查</w:t>
									</w:r>
								</w:p>
							</w:tc>
						</w:tr>
						<w:tr>
							<w:tblPrEx>
								<w:tblBorders>
									<w:top w:val="single" w:color="auto" w:sz="4" w:space="0"/>
									<w:left w:val="single" w:color="auto" w:sz="4" w:space="0"/>
									<w:bottom w:val="single" w:color="auto" w:sz="4" w:space="0"/>
									<w:right w:val="single" w:color="auto" w:sz="4" w:space="0"/>
									<w:insideH w:val="single" w:color="auto" w:sz="4" w:space="0"/>
									<w:insideV w:val="single" w:color="auto" w:sz="4" w:space="0"/>
								</w:tblBorders>
								<w:tblLayout w:type="fixed"/>
								<w:tblCellMar>
									<w:top w:w="0" w:type="dxa"/>
									<w:left w:w="108" w:type="dxa"/>
									<w:bottom w:w="0" w:type="dxa"/>
									<w:right w:w="108" w:type="dxa"/>
								</w:tblCellMar>
							</w:tblPrEx>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1531" w:type="dxa"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p>
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r>
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="7E7E7E" w:themeColor="text1" w:themeTint="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>学历</w:t>
									</w:r>
									<w:r>
										<w:rPr>
											<w:color w:val="7E7E7E" w:themeColor="text1" w:themeTint="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>证号</w:t>
									</w:r>
									<w:r>
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:b/>
											<w:color w:val="2E75B5" w:themeColor="accent1" w:themeShade="BF"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>//</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="3260" w:type="dxa"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p>
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r>
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>${educationBackGround.degreeCode!''}</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="2268" w:type="dxa"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p>
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r>
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:color w:val="7F7F7F" w:themeColor="background1" w:themeShade="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>核查</w:t>
									</w:r>
									<w:r>
										<w:rPr>
											<w:color w:val="7F7F7F" w:themeColor="background1" w:themeShade="80"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>结果</w:t>
									</w:r>
									<w:r>
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:b/>
											<w:color w:val="2E75B5" w:themeColor="accent1" w:themeShade="BF"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>//</w:t>
									</w:r>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="3056" w:type="dxa"/>
									<w:gridSpan w:val="2"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p>
									<w:pPr>
										<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r>
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t><#if educationBackGround.realed?? && educationBackGround.realed==1> 真实<#elseif educationBackGround.realed?? && educationBackGround.realed==2>造假</#if> </w:t>
									</w:r>
								</w:p>
							</w:tc>
						</w:tr>
					</w:tbl>
						 

					<#if educationBackGround.degreeIcon??&& educationBackGround.degreeIcon!=''> 
					
					<w:p>
						<w:pPr>
							<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
							<w:jc w:val="center"/>
							<w:rPr>
								<w:szCs w:val="21"/>
							</w:rPr>
						</w:pPr>
						<w:r>
							<w:rPr>
								<w:rFonts w:hint="eastAsia"/>
								<w:szCs w:val="21"/>
							</w:rPr>
							<w:drawing>
								<wp:inline distT="0" distB="0" distL="0" distR="0">
									<wp:extent cx="3811270" cy="2858135"/>
									<wp:effectExtent l="0" t="0" r="0" b="0"/>
									<wp:docPr id="2" name="图片 2"/>
									<wp:cNvGraphicFramePr>
										<a:graphicFrameLocks xmlns:a="http://schemas.openxmlformats.org/drawingml/2006/main" noChangeAspect="1"/>
									</wp:cNvGraphicFramePr>
									<a:graphic xmlns:a="http://schemas.openxmlformats.org/drawingml/2006/main">
										<a:graphicData uri="http://schemas.openxmlformats.org/drawingml/2006/picture">
											<pic:pic xmlns:pic="http://schemas.openxmlformats.org/drawingml/2006/picture">
												<pic:nvPicPr>
													<pic:cNvPr id="2" name="图片 2"/>
													<pic:cNvPicPr>
														<a:picLocks noChangeAspect="1"/>
													</pic:cNvPicPr>
												</pic:nvPicPr>
												<pic:blipFill>
													<a:blip r:embed="rIdy${educationBackGround.id}" cstate="print">
														<a:extLst>
															<a:ext uri="{28A0092B-C50C-407E-A947-70E740481C1C}">
																<a14:useLocalDpi xmlns:a14="http://schemas.microsoft.com/office/drawing/2010/main" val="0"/>
															</a:ext>
														</a:extLst>
													</a:blip>
													<a:stretch>
														<a:fillRect/>
													</a:stretch>
												</pic:blipFill>
												<pic:spPr>
													<a:xfrm>
														<a:off x="0" y="0"/>
														<a:ext cx="3812471" cy="2859354"/>
													</a:xfrm>
													<a:prstGeom prst="rect">
														<a:avLst/>
													</a:prstGeom>
												</pic:spPr>
											</pic:pic>
										</a:graphicData>
									</a:graphic>
								</wp:inline>
							</w:drawing>
						</w:r>
					</w:p>
					  </#if>
					
					<w:p>
						<w:pPr>
							<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
							<w:jc w:val="center"/>
							<w:rPr>
								<w:szCs w:val="21"/>
							</w:rPr>
						</w:pPr>
					</w:p>
						</#list>
					 </#if>
					<#elseif show??&&show==0>  
					  <w:p>
						<w:pPr>
							<w:pBdr>
								<w:bottom w:val="single" w:color="2E75B5" w:themeColor="accent1" w:themeShade="BF" w:sz="12" w:space="1"/>
							</w:pBdr>
							<w:shd w:val="clear" w:color="auto" w:fill="FFFFFF" w:themeFill="background1"/>
							<w:spacing w:after="156" w:afterLines="50" w:line="240" w:lineRule="atLeast"/>
							<w:ind w:left="-210" w:leftChars="-100"/>
							<w:rPr>
								<w:rFonts w:hint="eastAsia"/>
								<w:b/>
								<w:color w:val="2E75B5" w:themeColor="accent1" w:themeShade="BF"/>
								<w:sz w:val="32"/>
								<w:szCs w:val="32"/>
							</w:rPr>
						</w:pPr>
						<w:r>
							<w:rPr>
								<w:rFonts w:hint="eastAsia"/>
								<w:b/>
								<w:color w:val="2E75B5" w:themeColor="accent1" w:themeShade="BF"/>
								<w:sz w:val="32"/>
								<w:szCs w:val="32"/>
							</w:rPr>
							<w:t>教育背</w:t>
						</w:r>
						<w:r>
							<w:rPr>
								<w:b/>
								<w:color w:val="2E75B5" w:themeColor="accent1" w:themeShade="BF"/>
								<w:sz w:val="32"/>
								<w:szCs w:val="32"/>
							</w:rPr>
							<w:t>调</w:t>
						</w:r>
					</w:p>
					
						<w:tbl>
						<w:tblPr>
							<w:tblStyle w:val="8"/>
							<w:tblW w:w="9889" w:type="dxa"/>
							<w:tblInd w:w="-147" w:type="dxa"/>
							<w:tblBorders>
								<w:top w:val="single" w:color="auto" w:sz="4" w:space="0"/>
								<w:left w:val="single" w:color="auto" w:sz="4" w:space="0"/>
								<w:bottom w:val="single" w:color="auto" w:sz="4" w:space="0"/>
								<w:right w:val="single" w:color="auto" w:sz="4" w:space="0"/>
								<w:insideH w:val="single" w:color="auto" w:sz="4" w:space="0"/>
								<w:insideV w:val="single" w:color="auto" w:sz="4" w:space="0"/>
							</w:tblBorders>
							<w:tblLayout w:type="fixed"/>
							<w:tblCellMar>
								<w:top w:w="0" w:type="dxa"/>
								<w:left w:w="108" w:type="dxa"/>
								<w:bottom w:w="0" w:type="dxa"/>
								<w:right w:w="108" w:type="dxa"/>
							</w:tblCellMar>
						</w:tblPr>
						<w:tblGrid>
							<w:gridCol w:w="2269"/>
							<w:gridCol w:w="1984"/>
							<w:gridCol w:w="5636"/>
						</w:tblGrid>
						<w:tr>
							<w:tblPrEx>
								<w:tblBorders>
									<w:top w:val="single" w:color="auto" w:sz="4" w:space="0"/>
									<w:left w:val="single" w:color="auto" w:sz="4" w:space="0"/>
									<w:bottom w:val="single" w:color="auto" w:sz="4" w:space="0"/>
									<w:right w:val="single" w:color="auto" w:sz="4" w:space="0"/>
									<w:insideH w:val="single" w:color="auto" w:sz="4" w:space="0"/>
									<w:insideV w:val="single" w:color="auto" w:sz="4" w:space="0"/>
								</w:tblBorders>
								<w:tblLayout w:type="fixed"/>
								<w:tblCellMar>
									<w:top w:w="0" w:type="dxa"/>
									<w:left w:w="108" w:type="dxa"/>
									<w:bottom w:w="0" w:type="dxa"/>
									<w:right w:w="108" w:type="dxa"/>
								</w:tblCellMar>
							</w:tblPrEx>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="2269" w:type="dxa"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p>
									<w:pPr>
										<w:spacing w:after="0" w:line="240" w:lineRule="atLeast"/>
										<w:rPr>
											<w:b/>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="1984" w:type="dxa"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p>
									<w:pPr>
										<w:spacing w:after="0" w:line="240" w:lineRule="atLeast"/>
										<w:rPr>
											<w:color w:val="A5A5A5" w:themeColor="background1" w:themeShade="A6"/>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
								</w:p>
							</w:tc>
							<w:tc>
								<w:tcPr>
									<w:tcW w:w="5636" w:type="dxa"/>
									<w:tcBorders>
										<w:top w:val="nil"/>
										<w:left w:val="nil"/>
										<w:bottom w:val="nil"/>
										<w:right w:val="nil"/>
									</w:tcBorders>
								</w:tcPr>
								<w:p>
									<w:pPr>
										<w:spacing w:after="0" w:line="240" w:lineRule="atLeast"/>
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:b/>
											<w:szCs w:val="21"/>
										</w:rPr>
									</w:pPr>
									<w:r>
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:b/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>申请后</w:t>
									</w:r>
									<w:r>
										<w:rPr>
											<w:b/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>显示</w:t>
									</w:r>
									<w:r>
										<w:rPr>
											<w:rFonts w:hint="eastAsia"/>
											<w:b/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>核查</w:t>
									</w:r>
									<w:r>
										<w:rPr>
											<w:b/>
											<w:szCs w:val="21"/>
										</w:rPr>
										<w:t>结果</w:t>
									</w:r>
								</w:p>
							</w:tc>
						</w:tr>
					</w:tbl>
					</#if>
					
					
					<w:p w:rsidR="009D4049" w:rsidRPr="00BD3974" w:rsidRDefault="00E92BCE" w:rsidP="009D4049">
						<w:pPr>
							<w:spacing w:after="0" w:line="0" w:lineRule="atLeast"/>
							<w:jc w:val="center"/>
							<w:rPr>
								<w:szCs w:val="21"/>
							</w:rPr>
						</w:pPr>
						<w:r>
							<w:rPr>
								<w:rFonts w:hint="eastAsia"/>
								<w:b/>
								<w:color w:val="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
								<w:sz w:val="32"/>
								<w:szCs w:val="32"/>
							</w:rPr>
							<w:t xml:space="preserve"> </w:t>
						</w:r>
					</w:p>
					<w:p w:rsidR="00CA004D" w:rsidRPr="00B140E7" w:rsidRDefault="00CA004D" w:rsidP="00AD7492">
						<w:pPr>
							<w:pBdr>
								<w:bottom w:val="single" w:sz="12" w:space="1" w:color="2E74B5" w:themeColor="accent1" w:themeShade="BF"/>
							</w:pBdr>
							<w:shd w:val="clear" w:color="auto" w:fill="FFFFFF" w:themeFill="background1"/>
							<w:spacing w:afterLines="50" w:line="240" w:lineRule="atLeast"/>
							<w:ind w:leftChars="-100" w:left="-210"/>
							<w:rPr>
								<w:b/>
								<w:sz w:val="28"/>
								<w:szCs w:val="28"/>
							</w:rPr>
						</w:pPr>
					</w:p>
					<w:sectPr w:rsidR="00CA004D" w:rsidRPr="00B140E7" w:rsidSect="00625775">
						<w:pgSz w:w="11906" w:h="16838"/>
						<w:pgMar w:top="454" w:right="1077" w:bottom="1440" w:left="1077" w:header="851" w:footer="992" w:gutter="0"/>
						<w:cols w:space="425"/>
						<w:docGrid w:type="lines" w:linePitch="312"/>
					</w:sectPr>
				</w:body>
			</w:document>
		</pkg:xmlData>
	</pkg:part>
	<pkg:part pkg:name="/word/footnotes.xml" pkg:contentType="application/vnd.openxmlformats-officedocument.wordprocessingml.footnotes+xml">
		<pkg:xmlData>
			<w:footnotes xmlns:ve="http://schemas.openxmlformats.org/markup-compatibility/2006" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships" xmlns:m="http://schemas.openxmlformats.org/officeDocument/2006/math" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:wp="http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing" xmlns:w10="urn:schemas-microsoft-com:office:word" xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main" xmlns:wne="http://schemas.microsoft.com/office/word/2006/wordml">
				<w:footnote w:type="separator" w:id="0">
					<w:p w:rsidR="00126681" w:rsidRDefault="00126681" w:rsidP="00D10818">
						<w:r>
							<w:separator/>
						</w:r>
					</w:p>
				</w:footnote>
				<w:footnote w:type="continuationSeparator" w:id="1">
					<w:p w:rsidR="00126681" w:rsidRDefault="00126681" w:rsidP="00D10818">
						<w:r>
							<w:continuationSeparator/>
						</w:r>
					</w:p>
				</w:footnote>
			</w:footnotes>
		</pkg:xmlData>
	</pkg:part>
	<pkg:part pkg:name="/word/endnotes.xml" pkg:contentType="application/vnd.openxmlformats-officedocument.wordprocessingml.endnotes+xml">
		<pkg:xmlData>
			<w:endnotes xmlns:ve="http://schemas.openxmlformats.org/markup-compatibility/2006" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships" xmlns:m="http://schemas.openxmlformats.org/officeDocument/2006/math" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:wp="http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing" xmlns:w10="urn:schemas-microsoft-com:office:word" xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main" xmlns:wne="http://schemas.microsoft.com/office/word/2006/wordml">
				<w:endnote w:type="separator" w:id="0">
					<w:p w:rsidR="00126681" w:rsidRDefault="00126681" w:rsidP="00D10818">
						<w:r>
							<w:separator/>
						</w:r>
					</w:p>
				</w:endnote>
				<w:endnote w:type="continuationSeparator" w:id="1">
					<w:p w:rsidR="00126681" w:rsidRDefault="00126681" w:rsidP="00D10818">
						<w:r>
							<w:continuationSeparator/>
						</w:r>
					</w:p>
				</w:endnote>
			</w:endnotes>
		</pkg:xmlData>
	</pkg:part>
	<#if headPic??>
	<pkg:part pkg:name="/word/media/image2.jpeg" pkg:contentType="image/jpeg" pkg:compression="store">
		<pkg:binaryData>${headPic!''}</pkg:binaryData>
	</pkg:part>
	</#if>
	 <#if show??&&show==1>  
			<#if resumeEducationBackgroundListViews??&&resumeEducationBackgroundListViews?size gt 0>
				<#list resumeEducationBackgroundListViews as educationBackGround>
					<#if educationBackGround.degreeIcon??&&educationBackGround.degreeIcon !=''>
	<pkg:part pkg:name="/word/media/imagex${educationBackGround.id}.png" pkg:contentType="image/png" pkg:compression="store">
		<pkg:binaryData>${educationBackGround.degreeIcon!''}</pkg:binaryData>
	</pkg:part>
					</#if>
				</#list>
		  </#if>
	</#if>
	<pkg:part pkg:name="/word/theme/theme1.xml" pkg:contentType="application/vnd.openxmlformats-officedocument.theme+xml">
		<pkg:xmlData>
			<a:theme name="Office 主题" xmlns:a="http://schemas.openxmlformats.org/drawingml/2006/main">
				<a:themeElements>
					<a:clrScheme name="Office">
						<a:dk1>
							<a:sysClr val="windowText" lastClr="000000"/>
						</a:dk1>
						<a:lt1>
							<a:sysClr val="window" lastClr="FFFFFF"/>
						</a:lt1>
						<a:dk2>
							<a:srgbClr val="44546A"/>
						</a:dk2>
						<a:lt2>
							<a:srgbClr val="E7E6E6"/>
						</a:lt2>
						<a:accent1>
							<a:srgbClr val="5B9BD5"/>
						</a:accent1>
						<a:accent2>
							<a:srgbClr val="ED7D31"/>
						</a:accent2>
						<a:accent3>
							<a:srgbClr val="A5A5A5"/>
						</a:accent3>
						<a:accent4>
							<a:srgbClr val="FFC000"/>
						</a:accent4>
						<a:accent5>
							<a:srgbClr val="4472C4"/>
						</a:accent5>
						<a:accent6>
							<a:srgbClr val="70AD47"/>
						</a:accent6>
						<a:hlink>
							<a:srgbClr val="0563C1"/>
						</a:hlink>
						<a:folHlink>
							<a:srgbClr val="954F72"/>
						</a:folHlink>
					</a:clrScheme>
					<a:fontScheme name="Office">
						<a:majorFont>
							<a:latin typeface="等线 Light"/>
							<a:ea typeface=""/>
							<a:cs typeface=""/>
							<a:font script="Jpan" typeface="游ゴシック Light"/>
							<a:font script="Hang" typeface="맑은 고딕"/>
							<a:font script="Hans" typeface="等线 Light"/>
							<a:font script="Hant" typeface="新細明體"/>
							<a:font script="Arab" typeface="Times New Roman"/>
							<a:font script="Hebr" typeface="Times New Roman"/>
							<a:font script="Thai" typeface="Angsana New"/>
							<a:font script="Ethi" typeface="Nyala"/>
							<a:font script="Beng" typeface="Vrinda"/>
							<a:font script="Gujr" typeface="Shruti"/>
							<a:font script="Khmr" typeface="MoolBoran"/>
							<a:font script="Knda" typeface="Tunga"/>
							<a:font script="Guru" typeface="Raavi"/>
							<a:font script="Cans" typeface="Euphemia"/>
							<a:font script="Cher" typeface="Plantagenet Cherokee"/>
							<a:font script="Yiii" typeface="Microsoft Yi Baiti"/>
							<a:font script="Tibt" typeface="Microsoft Himalaya"/>
							<a:font script="Thaa" typeface="MV Boli"/>
							<a:font script="Deva" typeface="Mangal"/>
							<a:font script="Telu" typeface="Gautami"/>
							<a:font script="Taml" typeface="Latha"/>
							<a:font script="Syrc" typeface="Estrangelo Edessa"/>
							<a:font script="Orya" typeface="Kalinga"/>
							<a:font script="Mlym" typeface="Kartika"/>
							<a:font script="Laoo" typeface="DokChampa"/>
							<a:font script="Sinh" typeface="Iskoola Pota"/>
							<a:font script="Mong" typeface="Mongolian Baiti"/>
							<a:font script="Viet" typeface="Times New Roman"/>
							<a:font script="Uigh" typeface="Microsoft Uighur"/>
							<a:font script="Geor" typeface="Sylfaen"/>
							<a:font script="Armn" typeface="Arial"/>
							<a:font script="Bugi" typeface="Leelawadee UI"/>
							<a:font script="Bopo" typeface="Microsoft JhengHei"/>
							<a:font script="Java" typeface="Javanese Text"/>
							<a:font script="Lisu" typeface="Segoe UI"/>
							<a:font script="Mymr" typeface="Myanmar Text"/>
							<a:font script="Nkoo" typeface="Ebrima"/>
							<a:font script="Olck" typeface="Nirmala UI"/>
							<a:font script="Osma" typeface="Ebrima"/>
							<a:font script="Phag" typeface="Phagspa"/>
							<a:font script="Syrn" typeface="Estrangelo Edessa"/>
							<a:font script="Syrj" typeface="Estrangelo Edessa"/>
							<a:font script="Syre" typeface="Estrangelo Edessa"/>
							<a:font script="Sora" typeface="Nirmala UI"/>
							<a:font script="Tale" typeface="Microsoft Tai Le"/>
							<a:font script="Talu" typeface="Microsoft New Tai Lue"/>
							<a:font script="Tfng" typeface="Ebrima"/>
						</a:majorFont>
						<a:minorFont>
							<a:latin typeface="等线"/>
							<a:ea typeface=""/>
							<a:cs typeface=""/>
							<a:font script="Jpan" typeface="游明朝"/>
							<a:font script="Hang" typeface="맑은 고딕"/>
							<a:font script="Hans" typeface="等线"/>
							<a:font script="Hant" typeface="新細明體"/>
							<a:font script="Arab" typeface="Arial"/>
							<a:font script="Hebr" typeface="Arial"/>
							<a:font script="Thai" typeface="Cordia New"/>
							<a:font script="Ethi" typeface="Nyala"/>
							<a:font script="Beng" typeface="Vrinda"/>
							<a:font script="Gujr" typeface="Shruti"/>
							<a:font script="Khmr" typeface="DaunPenh"/>
							<a:font script="Knda" typeface="Tunga"/>
							<a:font script="Guru" typeface="Raavi"/>
							<a:font script="Cans" typeface="Euphemia"/>
							<a:font script="Cher" typeface="Plantagenet Cherokee"/>
							<a:font script="Yiii" typeface="Microsoft Yi Baiti"/>
							<a:font script="Tibt" typeface="Microsoft Himalaya"/>
							<a:font script="Thaa" typeface="MV Boli"/>
							<a:font script="Deva" typeface="Mangal"/>
							<a:font script="Telu" typeface="Gautami"/>
							<a:font script="Taml" typeface="Latha"/>
							<a:font script="Syrc" typeface="Estrangelo Edessa"/>
							<a:font script="Orya" typeface="Kalinga"/>
							<a:font script="Mlym" typeface="Kartika"/>
							<a:font script="Laoo" typeface="DokChampa"/>
							<a:font script="Sinh" typeface="Iskoola Pota"/>
							<a:font script="Mong" typeface="Mongolian Baiti"/>
							<a:font script="Viet" typeface="Arial"/>
							<a:font script="Uigh" typeface="Microsoft Uighur"/>
							<a:font script="Geor" typeface="Sylfaen"/>
							<a:font script="Armn" typeface="Arial"/>
							<a:font script="Bugi" typeface="Leelawadee UI"/>
							<a:font script="Bopo" typeface="Microsoft JhengHei"/>
							<a:font script="Java" typeface="Javanese Text"/>
							<a:font script="Lisu" typeface="Segoe UI"/>
							<a:font script="Mymr" typeface="Myanmar Text"/>
							<a:font script="Nkoo" typeface="Ebrima"/>
							<a:font script="Olck" typeface="Nirmala UI"/>
							<a:font script="Osma" typeface="Ebrima"/>
							<a:font script="Phag" typeface="Phagspa"/>
							<a:font script="Syrn" typeface="Estrangelo Edessa"/>
							<a:font script="Syrj" typeface="Estrangelo Edessa"/>
							<a:font script="Syre" typeface="Estrangelo Edessa"/>
							<a:font script="Sora" typeface="Nirmala UI"/>
							<a:font script="Tale" typeface="Microsoft Tai Le"/>
							<a:font script="Talu" typeface="Microsoft New Tai Lue"/>
							<a:font script="Tfng" typeface="Ebrima"/>
						</a:minorFont>
					</a:fontScheme>
					<a:fmtScheme name="Office">
						<a:fillStyleLst>
							<a:solidFill>
								<a:schemeClr val="phClr"/>
							</a:solidFill>
							<a:gradFill rotWithShape="1">
								<a:gsLst>
									<a:gs pos="0">
										<a:schemeClr val="phClr">
											<a:lumMod val="110000"/>
											<a:satMod val="105000"/>
											<a:tint val="67000"/>
										</a:schemeClr>
									</a:gs>
									<a:gs pos="50000">
										<a:schemeClr val="phClr">
											<a:lumMod val="105000"/>
											<a:satMod val="103000"/>
											<a:tint val="73000"/>
										</a:schemeClr>
									</a:gs>
									<a:gs pos="100000">
										<a:schemeClr val="phClr">
											<a:lumMod val="105000"/>
											<a:satMod val="109000"/>
											<a:tint val="81000"/>
										</a:schemeClr>
									</a:gs>
								</a:gsLst>
								<a:lin ang="5400000" scaled="0"/>
							</a:gradFill>
							<a:gradFill rotWithShape="1">
								<a:gsLst>
									<a:gs pos="0">
										<a:schemeClr val="phClr">
											<a:satMod val="103000"/>
											<a:lumMod val="102000"/>
											<a:tint val="94000"/>
										</a:schemeClr>
									</a:gs>
									<a:gs pos="50000">
										<a:schemeClr val="phClr">
											<a:satMod val="110000"/>
											<a:lumMod val="100000"/>
											<a:shade val="100000"/>
										</a:schemeClr>
									</a:gs>
									<a:gs pos="100000">
										<a:schemeClr val="phClr">
											<a:lumMod val="99000"/>
											<a:satMod val="120000"/>
											<a:shade val="78000"/>
										</a:schemeClr>
									</a:gs>
								</a:gsLst>
								<a:lin ang="5400000" scaled="0"/>
							</a:gradFill>
						</a:fillStyleLst>
						<a:lnStyleLst>
							<a:ln w="6350" cap="flat" cmpd="sng" algn="ctr">
								<a:solidFill>
									<a:schemeClr val="phClr"/>
								</a:solidFill>
								<a:prstDash val="solid"/>
								<a:miter lim="800000"/>
							</a:ln>
							<a:ln w="12700" cap="flat" cmpd="sng" algn="ctr">
								<a:solidFill>
									<a:schemeClr val="phClr"/>
								</a:solidFill>
								<a:prstDash val="solid"/>
								<a:miter lim="800000"/>
							</a:ln>
							<a:ln w="19050" cap="flat" cmpd="sng" algn="ctr">
								<a:solidFill>
									<a:schemeClr val="phClr"/>
								</a:solidFill>
								<a:prstDash val="solid"/>
								<a:miter lim="800000"/>
							</a:ln>
						</a:lnStyleLst>
						<a:effectStyleLst>
							<a:effectStyle>
								<a:effectLst/>
							</a:effectStyle>
							<a:effectStyle>
								<a:effectLst/>
							</a:effectStyle>
							<a:effectStyle>
								<a:effectLst>
									<a:outerShdw blurRad="57150" dist="19050" dir="5400000" algn="ctr" rotWithShape="0">
										<a:srgbClr val="000000">
											<a:alpha val="63000"/>
										</a:srgbClr>
									</a:outerShdw>
								</a:effectLst>
							</a:effectStyle>
						</a:effectStyleLst>
						<a:bgFillStyleLst>
							<a:solidFill>
								<a:schemeClr val="phClr"/>
							</a:solidFill>
							<a:solidFill>
								<a:schemeClr val="phClr">
									<a:tint val="95000"/>
									<a:satMod val="170000"/>
								</a:schemeClr>
							</a:solidFill>
							<a:gradFill rotWithShape="1">
								<a:gsLst>
									<a:gs pos="0">
										<a:schemeClr val="phClr">
											<a:tint val="93000"/>
											<a:satMod val="150000"/>
											<a:shade val="98000"/>
											<a:lumMod val="102000"/>
										</a:schemeClr>
									</a:gs>
									<a:gs pos="50000">
										<a:schemeClr val="phClr">
											<a:tint val="98000"/>
											<a:satMod val="130000"/>
											<a:shade val="90000"/>
											<a:lumMod val="103000"/>
										</a:schemeClr>
									</a:gs>
									<a:gs pos="100000">
										<a:schemeClr val="phClr">
											<a:shade val="63000"/>
											<a:satMod val="120000"/>
										</a:schemeClr>
									</a:gs>
								</a:gsLst>
								<a:lin ang="5400000" scaled="0"/>
							</a:gradFill>
						</a:bgFillStyleLst>
					</a:fmtScheme>
				</a:themeElements>
				<a:objectDefaults/>
				<a:extraClrSchemeLst/>
				<a:extLst>
					<a:ext uri="{05A4C25C-085E-4340-85A3-A5531E510DB2}">
						<thm15:themeFamily name="Office Theme" id="{62F939B6-93AF-4DB8-9C6B-D6C7DFDC589F}" vid="{4A3C46E8-61CC-4603-A589-7422A47A8E4A}" xmlns:thm15="http://schemas.microsoft.com/office/thememl/2012/main" xmlns=""/>
					</a:ext>
				</a:extLst>
			</a:theme>
		</pkg:xmlData>
	</pkg:part>
	<pkg:part pkg:name="/word/media/image1.png" pkg:contentType="image/png" pkg:compression="store">
		<pkg:binaryData>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</pkg:binaryData>
	</pkg:part>
	<pkg:part pkg:name="/word/settings.xml" pkg:contentType="application/vnd.openxmlformats-officedocument.wordprocessingml.settings+xml">
		<pkg:xmlData>
			<w:settings xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships" xmlns:m="http://schemas.openxmlformats.org/officeDocument/2006/math" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:w10="urn:schemas-microsoft-com:office:word" xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main" xmlns:sl="http://schemas.openxmlformats.org/schemaLibrary/2006/main">
				<w:zoom w:percent="100"/>
				<w:bordersDoNotSurroundHeader/>
				<w:bordersDoNotSurroundFooter/>
				<w:defaultTabStop w:val="420"/>
				<w:drawingGridHorizontalSpacing w:val="105"/>
				<w:drawingGridVerticalSpacing w:val="156"/>
				<w:displayHorizontalDrawingGridEvery w:val="0"/>
				<w:displayVerticalDrawingGridEvery w:val="2"/>
				<w:characterSpacingControl w:val="compressPunctuation"/>
				<w:hdrShapeDefaults>
					<o:shapedefaults v:ext="edit" spidmax="23554"/>
				</w:hdrShapeDefaults>
				<w:footnotePr>
					<w:footnote w:id="0"/>
					<w:footnote w:id="1"/>
				</w:footnotePr>
				<w:endnotePr>
					<w:endnote w:id="0"/>
					<w:endnote w:id="1"/>
				</w:endnotePr>
				<w:compat>
					<w:spaceForUL/>
					<w:balanceSingleByteDoubleByteWidth/>
					<w:doNotLeaveBackslashAlone/>
					<w:ulTrailSpace/>
					<w:doNotExpandShiftReturn/>
					<w:adjustLineHeightInTable/>
					<w:useFELayout/>
				</w:compat>
				<w:rsids>
					<w:rsidRoot w:val="00240C28"/>
					<w:rsid w:val="00085F9B"/>
					<w:rsid w:val="00092DE8"/>
					<w:rsid w:val="000D6FF5"/>
					<w:rsid w:val="000F59D0"/>
					<w:rsid w:val="00106802"/>
					<w:rsid w:val="00126681"/>
					<w:rsid w:val="00165D77"/>
					<w:rsid w:val="001D4EEB"/>
					<w:rsid w:val="001E4EC0"/>
					<w:rsid w:val="001F79B5"/>
					<w:rsid w:val="00240C28"/>
					<w:rsid w:val="002653EB"/>
					<w:rsid w:val="00266449"/>
					<w:rsid w:val="00273C66"/>
					<w:rsid w:val="00294197"/>
					<w:rsid w:val="002B72EC"/>
					<w:rsid w:val="002D0B19"/>
					<w:rsid w:val="002E56CC"/>
					<w:rsid w:val="00330D5F"/>
					<w:rsid w:val="003B606D"/>
					<w:rsid w:val="003C4545"/>
					<w:rsid w:val="003D345C"/>
					<w:rsid w:val="003E0091"/>
					<w:rsid w:val="00477628"/>
					<w:rsid w:val="00490D64"/>
					<w:rsid w:val="005227A0"/>
					<w:rsid w:val="005341E8"/>
					<w:rsid w:val="00565909"/>
					<w:rsid w:val="005A2A00"/>
					<w:rsid w:val="005A6AF9"/>
					<w:rsid w:val="005B3A6F"/>
					<w:rsid w:val="005F379E"/>
					<w:rsid w:val="00606B84"/>
					<w:rsid w:val="0062090D"/>
					<w:rsid w:val="00625775"/>
					<w:rsid w:val="006524C3"/>
					<w:rsid w:val="006677B8"/>
					<w:rsid w:val="006B4D3E"/>
					<w:rsid w:val="006F18CF"/>
					<w:rsid w:val="007132D9"/>
					<w:rsid w:val="007245D0"/>
					<w:rsid w:val="007F4371"/>
					<w:rsid w:val="00825146"/>
					<w:rsid w:val="008331CA"/>
					<w:rsid w:val="00876BE3"/>
					<w:rsid w:val="008809BB"/>
					<w:rsid w:val="0089090A"/>
					<w:rsid w:val="00894F15"/>
					<w:rsid w:val="009638E6"/>
					<w:rsid w:val="00965AEF"/>
					<w:rsid w:val="0098281A"/>
					<w:rsid w:val="00991CAB"/>
					<w:rsid w:val="009D1B5D"/>
					<w:rsid w:val="009D4049"/>
					<w:rsid w:val="009E5F61"/>
					<w:rsid w:val="009E7788"/>
					<w:rsid w:val="009F6F93"/>
					<w:rsid w:val="00AA1880"/>
					<w:rsid w:val="00AB04B6"/>
					<w:rsid w:val="00AB203F"/>
					<w:rsid w:val="00AD7492"/>
					<w:rsid w:val="00AE1103"/>
					<w:rsid w:val="00B140E7"/>
					<w:rsid w:val="00B170D5"/>
					<w:rsid w:val="00B61FD1"/>
					<w:rsid w:val="00BB4426"/>
					<w:rsid w:val="00BB44DA"/>
					<w:rsid w:val="00BC1156"/>
					<w:rsid w:val="00C24CC8"/>
					<w:rsid w:val="00C97021"/>
					<w:rsid w:val="00CA004D"/>
					<w:rsid w:val="00CA765F"/>
					<w:rsid w:val="00CC1038"/>
					<w:rsid w:val="00D027DE"/>
					<w:rsid w:val="00D046C8"/>
					<w:rsid w:val="00D10818"/>
					<w:rsid w:val="00D46F9E"/>
					<w:rsid w:val="00D50D82"/>
					<w:rsid w:val="00DB06A4"/>
					<w:rsid w:val="00DD6986"/>
					<w:rsid w:val="00E31924"/>
					<w:rsid w:val="00E56EA5"/>
					<w:rsid w:val="00E57FD3"/>
					<w:rsid w:val="00E92BCE"/>
					<w:rsid w:val="00ED5FE3"/>
					<w:rsid w:val="00EE1F2A"/>
					<w:rsid w:val="00F704D4"/>
					<w:rsid w:val="00FD190C"/>
					<w:rsid w:val="00FD2150"/>
					<w:rsid w:val="00FE4826"/>
					<w:rsid w:val="00FF4C38"/>
				</w:rsids>
				<m:mathPr>
					<m:mathFont m:val="Cambria Math"/>
					<m:brkBin m:val="before"/>
					<m:brkBinSub m:val="--"/>
					<m:smallFrac/>
					<m:dispDef/>
					<m:lMargin m:val="0"/>
					<m:rMargin m:val="0"/>
					<m:defJc m:val="centerGroup"/>
					<m:wrapIndent m:val="1440"/>
					<m:intLim m:val="subSup"/>
					<m:naryLim m:val="undOvr"/>
				</m:mathPr>
				<w:themeFontLang w:val="en-US" w:eastAsia="zh-CN"/>
				<w:clrSchemeMapping w:bg1="light1" w:t1="dark1" w:bg2="light2" w:t2="dark2" w:accent1="accent1" w:accent2="accent2" w:accent3="accent3" w:accent4="accent4" w:accent5="accent5" w:accent6="accent6" w:hyperlink="hyperlink" w:followedHyperlink="followedHyperlink"/>
				<w:shapeDefaults>
					<o:shapedefaults v:ext="edit" spidmax="23554"/>
					<o:shapelayout v:ext="edit">
						<o:idmap v:ext="edit" data="1"/>
					</o:shapelayout>
				</w:shapeDefaults>
				<w:decimalSymbol w:val="."/>
				<w:listSeparator w:val=","/>
			</w:settings>
		</pkg:xmlData>
	</pkg:part>
	<pkg:part pkg:name="/customXml/itemProps1.xml" pkg:contentType="application/vnd.openxmlformats-officedocument.customXmlProperties+xml" pkg:padding="32">
		<pkg:xmlData pkg:originalXmlStandalone="no">
			<ds:datastoreItem ds:itemID="{0C83DF43-5722-45C6-B62C-5FD63DE38FF1}" xmlns:ds="http://schemas.openxmlformats.org/officeDocument/2006/customXml">
				<ds:schemaRefs>
					<ds:schemaRef ds:uri="http://schemas.openxmlformats.org/officeDocument/2006/bibliography"/>
				</ds:schemaRefs>
			</ds:datastoreItem>
		</pkg:xmlData>
	</pkg:part>
	<pkg:part pkg:name="/customXml/_rels/item1.xml.rels" pkg:contentType="application/vnd.openxmlformats-package.relationships+xml" pkg:padding="256">
		<pkg:xmlData>
			<Relationships xmlns="http://schemas.openxmlformats.org/package/2006/relationships">
				<Relationship Id="rId1" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/customXmlProps" Target="itemProps1.xml"/>
			</Relationships>
		</pkg:xmlData>
	</pkg:part>
	<pkg:part pkg:name="/word/styles.xml" pkg:contentType="application/vnd.openxmlformats-officedocument.wordprocessingml.styles+xml">
		<pkg:xmlData>
			<w:styles xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships" xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main">
				<w:docDefaults>
					<w:rPrDefault>
						<w:rPr>
							<w:rFonts w:ascii="微软雅黑" w:eastAsia="微软雅黑" w:hAnsi="微软雅黑" w:cstheme="minorBidi"/>
							<w:kern w:val="2"/>
							<w:sz w:val="21"/>
							<w:szCs w:val="22"/>
							<w:lang w:val="en-US" w:eastAsia="zh-CN" w:bidi="ar-SA"/>
						</w:rPr>
					</w:rPrDefault>
					<w:pPrDefault>
						<w:pPr>
							<w:spacing w:after="40"/>
							<w:jc w:val="both"/>
						</w:pPr>
					</w:pPrDefault>
				</w:docDefaults>
				<w:latentStyles w:defLockedState="0" w:defUIPriority="99" w:defSemiHidden="1" w:defUnhideWhenUsed="1" w:defQFormat="0" w:count="267">
					<w:lsdException w:name="Normal" w:semiHidden="0" w:uiPriority="0" w:unhideWhenUsed="0" w:qFormat="1"/>
					<w:lsdException w:name="heading 1" w:semiHidden="0" w:uiPriority="9" w:unhideWhenUsed="0" w:qFormat="1"/>
					<w:lsdException w:name="heading 2" w:uiPriority="9" w:qFormat="1"/>
					<w:lsdException w:name="heading 3" w:uiPriority="9" w:qFormat="1"/>
					<w:lsdException w:name="heading 4" w:uiPriority="9" w:qFormat="1"/>
					<w:lsdException w:name="heading 5" w:uiPriority="9" w:qFormat="1"/>
					<w:lsdException w:name="heading 6" w:uiPriority="9" w:qFormat="1"/>
					<w:lsdException w:name="heading 7" w:uiPriority="9" w:qFormat="1"/>
					<w:lsdException w:name="heading 8" w:uiPriority="9" w:qFormat="1"/>
					<w:lsdException w:name="heading 9" w:uiPriority="9" w:qFormat="1"/>
					<w:lsdException w:name="toc 1" w:uiPriority="39"/>
					<w:lsdException w:name="toc 2" w:uiPriority="39"/>
					<w:lsdException w:name="toc 3" w:uiPriority="39"/>
					<w:lsdException w:name="toc 4" w:uiPriority="39"/>
					<w:lsdException w:name="toc 5" w:uiPriority="39"/>
					<w:lsdException w:name="toc 6" w:uiPriority="39"/>
					<w:lsdException w:name="toc 7" w:uiPriority="39"/>
					<w:lsdException w:name="toc 8" w:uiPriority="39"/>
					<w:lsdException w:name="toc 9" w:uiPriority="39"/>
					<w:lsdException w:name="caption" w:uiPriority="35" w:qFormat="1"/>
					<w:lsdException w:name="Title" w:semiHidden="0" w:uiPriority="10" w:unhideWhenUsed="0" w:qFormat="1"/>
					<w:lsdException w:name="Default Paragraph Font" w:uiPriority="1"/>
					<w:lsdException w:name="Subtitle" w:semiHidden="0" w:uiPriority="11" w:unhideWhenUsed="0" w:qFormat="1"/>
					<w:lsdException w:name="Strong" w:semiHidden="0" w:uiPriority="22" w:unhideWhenUsed="0" w:qFormat="1"/>
					<w:lsdException w:name="Emphasis" w:semiHidden="0" w:uiPriority="20" w:unhideWhenUsed="0" w:qFormat="1"/>
					<w:lsdException w:name="Table Grid" w:semiHidden="0" w:uiPriority="39" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Placeholder Text" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="No Spacing" w:semiHidden="0" w:uiPriority="1" w:unhideWhenUsed="0" w:qFormat="1"/>
					<w:lsdException w:name="Light Shading" w:semiHidden="0" w:uiPriority="60" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Light List" w:semiHidden="0" w:uiPriority="61" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Light Grid" w:semiHidden="0" w:uiPriority="62" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Medium Shading 1" w:semiHidden="0" w:uiPriority="63" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Medium Shading 2" w:semiHidden="0" w:uiPriority="64" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Medium List 1" w:semiHidden="0" w:uiPriority="65" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Medium List 2" w:semiHidden="0" w:uiPriority="66" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Medium Grid 1" w:semiHidden="0" w:uiPriority="67" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Medium Grid 2" w:semiHidden="0" w:uiPriority="68" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Medium Grid 3" w:semiHidden="0" w:uiPriority="69" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Dark List" w:semiHidden="0" w:uiPriority="70" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Colorful Shading" w:semiHidden="0" w:uiPriority="71" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Colorful List" w:semiHidden="0" w:uiPriority="72" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Colorful Grid" w:semiHidden="0" w:uiPriority="73" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Light Shading Accent 1" w:semiHidden="0" w:uiPriority="60" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Light List Accent 1" w:semiHidden="0" w:uiPriority="61" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Light Grid Accent 1" w:semiHidden="0" w:uiPriority="62" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Medium Shading 1 Accent 1" w:semiHidden="0" w:uiPriority="63" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Medium Shading 2 Accent 1" w:semiHidden="0" w:uiPriority="64" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Medium List 1 Accent 1" w:semiHidden="0" w:uiPriority="65" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Revision" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="List Paragraph" w:semiHidden="0" w:uiPriority="34" w:unhideWhenUsed="0" w:qFormat="1"/>
					<w:lsdException w:name="Quote" w:semiHidden="0" w:uiPriority="29" w:unhideWhenUsed="0" w:qFormat="1"/>
					<w:lsdException w:name="Intense Quote" w:semiHidden="0" w:uiPriority="30" w:unhideWhenUsed="0" w:qFormat="1"/>
					<w:lsdException w:name="Medium List 2 Accent 1" w:semiHidden="0" w:uiPriority="66" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Medium Grid 1 Accent 1" w:semiHidden="0" w:uiPriority="67" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Medium Grid 2 Accent 1" w:semiHidden="0" w:uiPriority="68" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Medium Grid 3 Accent 1" w:semiHidden="0" w:uiPriority="69" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Dark List Accent 1" w:semiHidden="0" w:uiPriority="70" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Colorful Shading Accent 1" w:semiHidden="0" w:uiPriority="71" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Colorful List Accent 1" w:semiHidden="0" w:uiPriority="72" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Colorful Grid Accent 1" w:semiHidden="0" w:uiPriority="73" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Light Shading Accent 2" w:semiHidden="0" w:uiPriority="60" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Light List Accent 2" w:semiHidden="0" w:uiPriority="61" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Light Grid Accent 2" w:semiHidden="0" w:uiPriority="62" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Medium Shading 1 Accent 2" w:semiHidden="0" w:uiPriority="63" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Medium Shading 2 Accent 2" w:semiHidden="0" w:uiPriority="64" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Medium List 1 Accent 2" w:semiHidden="0" w:uiPriority="65" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Medium List 2 Accent 2" w:semiHidden="0" w:uiPriority="66" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Medium Grid 1 Accent 2" w:semiHidden="0" w:uiPriority="67" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Medium Grid 2 Accent 2" w:semiHidden="0" w:uiPriority="68" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Medium Grid 3 Accent 2" w:semiHidden="0" w:uiPriority="69" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Dark List Accent 2" w:semiHidden="0" w:uiPriority="70" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Colorful Shading Accent 2" w:semiHidden="0" w:uiPriority="71" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Colorful List Accent 2" w:semiHidden="0" w:uiPriority="72" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Colorful Grid Accent 2" w:semiHidden="0" w:uiPriority="73" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Light Shading Accent 3" w:semiHidden="0" w:uiPriority="60" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Light List Accent 3" w:semiHidden="0" w:uiPriority="61" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Light Grid Accent 3" w:semiHidden="0" w:uiPriority="62" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Medium Shading 1 Accent 3" w:semiHidden="0" w:uiPriority="63" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Medium Shading 2 Accent 3" w:semiHidden="0" w:uiPriority="64" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Medium List 1 Accent 3" w:semiHidden="0" w:uiPriority="65" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Medium List 2 Accent 3" w:semiHidden="0" w:uiPriority="66" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Medium Grid 1 Accent 3" w:semiHidden="0" w:uiPriority="67" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Medium Grid 2 Accent 3" w:semiHidden="0" w:uiPriority="68" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Medium Grid 3 Accent 3" w:semiHidden="0" w:uiPriority="69" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Dark List Accent 3" w:semiHidden="0" w:uiPriority="70" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Colorful Shading Accent 3" w:semiHidden="0" w:uiPriority="71" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Colorful List Accent 3" w:semiHidden="0" w:uiPriority="72" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Colorful Grid Accent 3" w:semiHidden="0" w:uiPriority="73" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Light Shading Accent 4" w:semiHidden="0" w:uiPriority="60" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Light List Accent 4" w:semiHidden="0" w:uiPriority="61" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Light Grid Accent 4" w:semiHidden="0" w:uiPriority="62" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Medium Shading 1 Accent 4" w:semiHidden="0" w:uiPriority="63" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Medium Shading 2 Accent 4" w:semiHidden="0" w:uiPriority="64" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Medium List 1 Accent 4" w:semiHidden="0" w:uiPriority="65" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Medium List 2 Accent 4" w:semiHidden="0" w:uiPriority="66" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Medium Grid 1 Accent 4" w:semiHidden="0" w:uiPriority="67" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Medium Grid 2 Accent 4" w:semiHidden="0" w:uiPriority="68" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Medium Grid 3 Accent 4" w:semiHidden="0" w:uiPriority="69" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Dark List Accent 4" w:semiHidden="0" w:uiPriority="70" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Colorful Shading Accent 4" w:semiHidden="0" w:uiPriority="71" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Colorful List Accent 4" w:semiHidden="0" w:uiPriority="72" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Colorful Grid Accent 4" w:semiHidden="0" w:uiPriority="73" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Light Shading Accent 5" w:semiHidden="0" w:uiPriority="60" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Light List Accent 5" w:semiHidden="0" w:uiPriority="61" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Light Grid Accent 5" w:semiHidden="0" w:uiPriority="62" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Medium Shading 1 Accent 5" w:semiHidden="0" w:uiPriority="63" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Medium Shading 2 Accent 5" w:semiHidden="0" w:uiPriority="64" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Medium List 1 Accent 5" w:semiHidden="0" w:uiPriority="65" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Medium List 2 Accent 5" w:semiHidden="0" w:uiPriority="66" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Medium Grid 1 Accent 5" w:semiHidden="0" w:uiPriority="67" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Medium Grid 2 Accent 5" w:semiHidden="0" w:uiPriority="68" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Medium Grid 3 Accent 5" w:semiHidden="0" w:uiPriority="69" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Dark List Accent 5" w:semiHidden="0" w:uiPriority="70" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Colorful Shading Accent 5" w:semiHidden="0" w:uiPriority="71" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Colorful List Accent 5" w:semiHidden="0" w:uiPriority="72" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Colorful Grid Accent 5" w:semiHidden="0" w:uiPriority="73" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Light Shading Accent 6" w:semiHidden="0" w:uiPriority="60" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Light List Accent 6" w:semiHidden="0" w:uiPriority="61" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Light Grid Accent 6" w:semiHidden="0" w:uiPriority="62" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Medium Shading 1 Accent 6" w:semiHidden="0" w:uiPriority="63" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Medium Shading 2 Accent 6" w:semiHidden="0" w:uiPriority="64" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Medium List 1 Accent 6" w:semiHidden="0" w:uiPriority="65" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Medium List 2 Accent 6" w:semiHidden="0" w:uiPriority="66" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Medium Grid 1 Accent 6" w:semiHidden="0" w:uiPriority="67" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Medium Grid 2 Accent 6" w:semiHidden="0" w:uiPriority="68" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Medium Grid 3 Accent 6" w:semiHidden="0" w:uiPriority="69" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Dark List Accent 6" w:semiHidden="0" w:uiPriority="70" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Colorful Shading Accent 6" w:semiHidden="0" w:uiPriority="71" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Colorful List Accent 6" w:semiHidden="0" w:uiPriority="72" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Colorful Grid Accent 6" w:semiHidden="0" w:uiPriority="73" w:unhideWhenUsed="0"/>
					<w:lsdException w:name="Subtle Emphasis" w:semiHidden="0" w:uiPriority="19" w:unhideWhenUsed="0" w:qFormat="1"/>
					<w:lsdException w:name="Intense Emphasis" w:semiHidden="0" w:uiPriority="21" w:unhideWhenUsed="0" w:qFormat="1"/>
					<w:lsdException w:name="Subtle Reference" w:semiHidden="0" w:uiPriority="31" w:unhideWhenUsed="0" w:qFormat="1"/>
					<w:lsdException w:name="Intense Reference" w:semiHidden="0" w:uiPriority="32" w:unhideWhenUsed="0" w:qFormat="1"/>
					<w:lsdException w:name="Book Title" w:semiHidden="0" w:uiPriority="33" w:unhideWhenUsed="0" w:qFormat="1"/>
					<w:lsdException w:name="Bibliography" w:uiPriority="37"/>
					<w:lsdException w:name="TOC Heading" w:uiPriority="39" w:qFormat="1"/>
				</w:latentStyles>
				<w:style w:type="paragraph" w:default="1" w:styleId="a">
					<w:name w:val="Normal"/>
					<w:qFormat/>
					<w:rsid w:val="00F704D4"/>
				</w:style>
				<w:style w:type="character" w:default="1" w:styleId="a0">
					<w:name w:val="Default Paragraph Font"/>
					<w:uiPriority w:val="1"/>
					<w:semiHidden/>
					<w:unhideWhenUsed/>
				</w:style>
				<w:style w:type="table" w:default="1" w:styleId="a1">
					<w:name w:val="Normal Table"/>
					<w:uiPriority w:val="99"/>
					<w:semiHidden/>
					<w:unhideWhenUsed/>
					<w:qFormat/>
					<w:tblPr>
						<w:tblInd w:w="0" w:type="dxa"/>
						<w:tblCellMar>
							<w:top w:w="0" w:type="dxa"/>
							<w:left w:w="108" w:type="dxa"/>
							<w:bottom w:w="0" w:type="dxa"/>
							<w:right w:w="108" w:type="dxa"/>
						</w:tblCellMar>
					</w:tblPr>
				</w:style>
				<w:style w:type="numbering" w:default="1" w:styleId="a2">
					<w:name w:val="No List"/>
					<w:uiPriority w:val="99"/>
					<w:semiHidden/>
					<w:unhideWhenUsed/>
				</w:style>
				<w:style w:type="table" w:styleId="a3">
					<w:name w:val="Table Grid"/>
					<w:basedOn w:val="a1"/>
					<w:uiPriority w:val="39"/>
					<w:rsid w:val="00490D64"/>
					<w:tblPr>
						<w:tblInd w:w="0" w:type="dxa"/>
						<w:tblBorders>
							<w:top w:val="single" w:sz="4" w:space="0" w:color="auto"/>
							<w:left w:val="single" w:sz="4" w:space="0" w:color="auto"/>
							<w:bottom w:val="single" w:sz="4" w:space="0" w:color="auto"/>
							<w:right w:val="single" w:sz="4" w:space="0" w:color="auto"/>
							<w:insideH w:val="single" w:sz="4" w:space="0" w:color="auto"/>
							<w:insideV w:val="single" w:sz="4" w:space="0" w:color="auto"/>
						</w:tblBorders>
						<w:tblCellMar>
							<w:top w:w="0" w:type="dxa"/>
							<w:left w:w="108" w:type="dxa"/>
							<w:bottom w:w="0" w:type="dxa"/>
							<w:right w:w="108" w:type="dxa"/>
						</w:tblCellMar>
					</w:tblPr>
				</w:style>
				<w:style w:type="paragraph" w:styleId="a4">
					<w:name w:val="Quote"/>
					<w:basedOn w:val="a"/>
					<w:next w:val="a"/>
					<w:link w:val="Char"/>
					<w:uiPriority w:val="29"/>
					<w:qFormat/>
					<w:rsid w:val="008331CA"/>
					<w:pPr>
						<w:spacing w:before="200" w:after="160"/>
						<w:ind w:left="864" w:right="864"/>
						<w:jc w:val="center"/>
					</w:pPr>
					<w:rPr>
						<w:i/>
						<w:iCs/>
						<w:color w:val="404040" w:themeColor="text1" w:themeTint="BF"/>
					</w:rPr>
				</w:style>
				<w:style w:type="character" w:customStyle="1" w:styleId="Char">
					<w:name w:val="引用 Char"/>
					<w:basedOn w:val="a0"/>
					<w:link w:val="a4"/>
					<w:uiPriority w:val="29"/>
					<w:rsid w:val="008331CA"/>
					<w:rPr>
						<w:i/>
						<w:iCs/>
						<w:color w:val="404040" w:themeColor="text1" w:themeTint="BF"/>
					</w:rPr>
				</w:style>
				<w:style w:type="paragraph" w:styleId="a5">
					<w:name w:val="header"/>
					<w:basedOn w:val="a"/>
					<w:link w:val="Char0"/>
					<w:uiPriority w:val="99"/>
					<w:unhideWhenUsed/>
					<w:rsid w:val="00D10818"/>
					<w:pPr>
						<w:pBdr>
							<w:bottom w:val="single" w:sz="6" w:space="1" w:color="auto"/>
						</w:pBdr>
						<w:tabs>
							<w:tab w:val="center" w:pos="4153"/>
							<w:tab w:val="right" w:pos="8306"/>
						</w:tabs>
						<w:snapToGrid w:val="0"/>
						<w:jc w:val="center"/>
					</w:pPr>
					<w:rPr>
						<w:sz w:val="18"/>
						<w:szCs w:val="18"/>
					</w:rPr>
				</w:style>
				<w:style w:type="character" w:customStyle="1" w:styleId="Char0">
					<w:name w:val="页眉 Char"/>
					<w:basedOn w:val="a0"/>
					<w:link w:val="a5"/>
					<w:uiPriority w:val="99"/>
					<w:rsid w:val="00D10818"/>
					<w:rPr>
						<w:sz w:val="18"/>
						<w:szCs w:val="18"/>
					</w:rPr>
				</w:style>
				<w:style w:type="paragraph" w:styleId="a6">
					<w:name w:val="footer"/>
					<w:basedOn w:val="a"/>
					<w:link w:val="Char1"/>
					<w:uiPriority w:val="99"/>
					<w:unhideWhenUsed/>
					<w:rsid w:val="00D10818"/>
					<w:pPr>
						<w:tabs>
							<w:tab w:val="center" w:pos="4153"/>
							<w:tab w:val="right" w:pos="8306"/>
						</w:tabs>
						<w:snapToGrid w:val="0"/>
						<w:jc w:val="left"/>
					</w:pPr>
					<w:rPr>
						<w:sz w:val="18"/>
						<w:szCs w:val="18"/>
					</w:rPr>
				</w:style>
				<w:style w:type="character" w:customStyle="1" w:styleId="Char1">
					<w:name w:val="页脚 Char"/>
					<w:basedOn w:val="a0"/>
					<w:link w:val="a6"/>
					<w:uiPriority w:val="99"/>
					<w:rsid w:val="00D10818"/>
					<w:rPr>
						<w:sz w:val="18"/>
						<w:szCs w:val="18"/>
					</w:rPr>
				</w:style>
				<w:style w:type="paragraph" w:styleId="a7">
					<w:name w:val="Balloon Text"/>
					<w:basedOn w:val="a"/>
					<w:link w:val="Char2"/>
					<w:uiPriority w:val="99"/>
					<w:semiHidden/>
					<w:unhideWhenUsed/>
					<w:rsid w:val="0062090D"/>
					<w:pPr>
						<w:spacing w:after="0"/>
					</w:pPr>
					<w:rPr>
						<w:sz w:val="18"/>
						<w:szCs w:val="18"/>
					</w:rPr>
				</w:style>
				<w:style w:type="character" w:customStyle="1" w:styleId="Char2">
					<w:name w:val="批注框文本 Char"/>
					<w:basedOn w:val="a0"/>
					<w:link w:val="a7"/>
					<w:uiPriority w:val="99"/>
					<w:semiHidden/>
					<w:rsid w:val="0062090D"/>
					<w:rPr>
						<w:sz w:val="18"/>
						<w:szCs w:val="18"/>
					</w:rPr>
				</w:style>
				<w:style w:type="character" w:styleId="a8">
					<w:name w:val="Hyperlink"/>
					<w:basedOn w:val="a0"/>
					<w:uiPriority w:val="99"/>
					<w:unhideWhenUsed/>
					<w:rsid w:val="00CA004D"/>
					<w:rPr>
						<w:color w:val="0563C1" w:themeColor="hyperlink"/>
						<w:u w:val="single"/>
					</w:rPr>
				</w:style>
				<w:style w:type="paragraph" w:styleId="a9">
					<w:name w:val="List Paragraph"/>
					<w:basedOn w:val="a"/>
					<w:uiPriority w:val="34"/>
					<w:qFormat/>
					<w:rsid w:val="00CA004D"/>
					<w:pPr>
						<w:ind w:firstLineChars="200" w:firstLine="420"/>
					</w:pPr>
				</w:style>
				<w:style w:type="character" w:styleId="aa">
					<w:name w:val="annotation reference"/>
					<w:basedOn w:val="a0"/>
					<w:uiPriority w:val="99"/>
					<w:semiHidden/>
					<w:unhideWhenUsed/>
					<w:rsid w:val="00B140E7"/>
					<w:rPr>
						<w:sz w:val="21"/>
						<w:szCs w:val="21"/>
					</w:rPr>
				</w:style>
				<w:style w:type="paragraph" w:styleId="ab">
					<w:name w:val="annotation text"/>
					<w:basedOn w:val="a"/>
					<w:link w:val="Char3"/>
					<w:uiPriority w:val="99"/>
					<w:semiHidden/>
					<w:unhideWhenUsed/>
					<w:rsid w:val="00B140E7"/>
					<w:pPr>
						<w:jc w:val="left"/>
					</w:pPr>
				</w:style>
				<w:style w:type="character" w:customStyle="1" w:styleId="Char3">
					<w:name w:val="批注文字 Char"/>
					<w:basedOn w:val="a0"/>
					<w:link w:val="ab"/>
					<w:uiPriority w:val="99"/>
					<w:semiHidden/>
					<w:rsid w:val="00B140E7"/>
				</w:style>
			</w:styles>
		</pkg:xmlData>
	</pkg:part>
	<pkg:part pkg:name="/word/fontTable.xml" pkg:contentType="application/vnd.openxmlformats-officedocument.wordprocessingml.fontTable+xml">
		<pkg:xmlData>
			<w:fonts xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships" xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main">
				<w:font w:name="微软雅黑">
					<w:panose1 w:val="020B0503020204020204"/>
					<w:charset w:val="86"/>
					<w:family w:val="swiss"/>
					<w:pitch w:val="variable"/>
					<w:sig w:usb0="80000287" w:usb1="280F3C52" w:usb2="00000016" w:usb3="00000000" w:csb0="0004001F" w:csb1="00000000"/>
				</w:font>
				<w:font w:name="Times New Roman">
					<w:panose1 w:val="02020603050405020304"/>
					<w:charset w:val="00"/>
					<w:family w:val="roman"/>
					<w:pitch w:val="variable"/>
					<w:sig w:usb0="E0002AFF" w:usb1="C0007841" w:usb2="00000009" w:usb3="00000000" w:csb0="000001FF" w:csb1="00000000"/>
				</w:font>
				<w:font w:name="等线 Light">
					<w:altName w:val="Arial Unicode MS"/>
					<w:charset w:val="86"/>
					<w:family w:val="auto"/>
					<w:pitch w:val="variable"/>
					<w:sig w:usb0="00000000" w:usb1="38CF7CFA" w:usb2="00000016" w:usb3="00000000" w:csb0="0004000F" w:csb1="00000000"/>
				</w:font>
				<w:font w:name="等线">
					<w:altName w:val="Arial Unicode MS"/>
					<w:charset w:val="86"/>
					<w:family w:val="auto"/>
					<w:pitch w:val="variable"/>
					<w:sig w:usb0="00000000" w:usb1="38CF7CFA" w:usb2="00000016" w:usb3="00000000" w:csb0="0004000F" w:csb1="00000000"/>
				</w:font>
			</w:fonts>
		</pkg:xmlData>
	</pkg:part>
	<pkg:part pkg:name="/docProps/core.xml" pkg:contentType="application/vnd.openxmlformats-package.core-properties+xml" pkg:padding="256">
		<pkg:xmlData>
			<cp:coreProperties xmlns:cp="http://schemas.openxmlformats.org/package/2006/metadata/core-properties" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:dcmitype="http://purl.org/dc/dcmitype/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
				<dc:creator>xiaodong yin</dc:creator>
				<cp:lastModifiedBy>rysh101</cp:lastModifiedBy>
				<cp:revision>33</cp:revision>
				<cp:lastPrinted>2017-07-26T06:24:00Z</cp:lastPrinted>
				<dcterms:created xsi:type="dcterms:W3CDTF">2017-08-03T10:24:00Z</dcterms:created>
				<dcterms:modified xsi:type="dcterms:W3CDTF">2018-01-02T07:43:00Z</dcterms:modified>
			</cp:coreProperties>
		</pkg:xmlData>
	</pkg:part>
	<pkg:part pkg:name="/customXml/item1.xml" pkg:contentType="application/xml" pkg:padding="32">
		<pkg:xmlData pkg:originalXmlStandalone="no">
			<b:Sources SelectedStyle="\APASixthEditionOfficeOnline.xsl" StyleName="APA" Version="6" xmlns:b="http://schemas.openxmlformats.org/officeDocument/2006/bibliography" xmlns="http://schemas.openxmlformats.org/officeDocument/2006/bibliography"/>
		</pkg:xmlData>
	</pkg:part>
	<pkg:part pkg:name="/word/webSettings.xml" pkg:contentType="application/vnd.openxmlformats-officedocument.wordprocessingml.webSettings+xml">
		<pkg:xmlData>
			<w:webSettings xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships" xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main">
				<w:optimizeForBrowser/>
				<w:allowPNG/>
			</w:webSettings>
		</pkg:xmlData>
	</pkg:part>
	<pkg:part pkg:name="/docProps/app.xml" pkg:contentType="application/vnd.openxmlformats-officedocument.extended-properties+xml" pkg:padding="256">
		<pkg:xmlData>
			<Properties xmlns="http://schemas.openxmlformats.org/officeDocument/2006/extended-properties" xmlns:vt="http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes">
				<Template>Normal.dotm</Template>
				<TotalTime>7</TotalTime>
				<Pages>4</Pages>
				<Words>486</Words>
				<Characters>2775</Characters>
				<Application>Microsoft Office Word</Application>
				<DocSecurity>0</DocSecurity>
				<Lines>23</Lines>
				<Paragraphs>6</Paragraphs>
				<ScaleCrop>false</ScaleCrop>
				<Company/>
				<LinksUpToDate>false</LinksUpToDate>
				<CharactersWithSpaces>3255</CharactersWithSpaces>
				<SharedDoc>false</SharedDoc>
				<HyperlinksChanged>false</HyperlinksChanged>
				<AppVersion>12.0000</AppVersion>
			</Properties>
		</pkg:xmlData>
	</pkg:part>
</pkg:package>