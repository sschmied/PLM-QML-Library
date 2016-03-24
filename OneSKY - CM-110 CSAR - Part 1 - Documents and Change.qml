<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE qml SYSTEM "/wt/query/qml/qml.dtd">
<qml bypassAccessControl="true" legacyMode="false">
    <parameter name="Released" type="wt.lifecycle.State">
        <parameterDefault isMacro="false">RELEASED</parameterDefault>
    </parameter>
    <statement>
        <query>
            <select distinct="true" group="true">
                <object alias="Part" heading="Part Context" propertyName="containerName">
                    <property name="containerName"/>
                </object>
                <column alias="Part" heading="Part Number"
                    propertyName="number" type="java.lang.String">master&gt;number</column>
                <column alias="Part" heading="Part Name"
                    propertyName="name" type="java.lang.String">master&gt;name</column>
                <column alias="Part" heading="Part Indenture Level" type="java.lang.Long">WCTYPE|wt.part.WTPart~MBA|typeInfoWTPart.ptc_lng_3</column>
                <object alias="Part" heading="Part Type" propertyName="displayType">
                    <property name="displayType"/>
                </object>
                <object alias="Part" heading="Part Revision" propertyName="iterationDisplayIdentifier">
                    <property name="iterationDisplayIdentifier"/>
                </object>
                <column alias="Part" heading="Last Modified"
                    propertyName="modifyTimestamp" type="java.sql.Timestamp">thePersistInfo.modifyStamp</column>
                <column alias="Part" heading="Part State"
                    propertyName="lifeCycleState" type="wt.lifecycle.State">state.state</column>
                <column alias="Part" heading="Part Ancillary Equipment" type="java.lang.String">WCTYPE|wt.part.WTPart~MBA|typeInfoWTPart.ptc_str_25</column>
                <column alias="Part"
                    heading="Part Ancillary Equipment Designation" type="java.lang.String">WCTYPE|wt.part.WTPart~MBA|typeInfoWTPart.ptc_str_3</column>
                <column alias="Part Master" heading="Part Number (Uses)"
                    propertyName="number" type="java.lang.String">number</column>
                <column alias="Part Master" heading="Part Name (Uses)"
                    propertyName="name" type="java.lang.String">name</column>
                <object alias="Part Master" heading="Part Type (Uses)" propertyName="displayType">
                    <property name="displayType"/>
                </object>
                <column alias="Document" heading="Document Number"
                    propertyName="number" type="java.lang.String">master&gt;number</column>
                <column alias="Document" heading="Document Name"
                    propertyName="name" type="java.lang.String">master&gt;name</column>
                <column alias="Document" heading="Document Type" type="java.lang.String">WCTYPE|wt.doc.WTDocument~MBA|typeInfoWTDocument.ptc_str_29</column>
                <object alias="Document" heading="Document Revision" propertyName="versionDisplayIdentifier">
                    <property name="versionDisplayIdentifier"/>
                </object>
                <column alias="Document"
                    heading="Document Last Modified"
                    propertyName="modifyTimestamp" type="java.sql.Timestamp">thePersistInfo.modifyStamp</column>
                <column alias="Document"
                    heading="Document Contract Number" type="java.lang.String">WCTYPE|wt.doc.WTDocument~MBA|typeInfoWTDocument.ptc_str_30</column>
                <column alias="Document" heading="Document CDRL" type="java.lang.String">WCTYPE|wt.doc.WTDocument~MBA|typeInfoWTDocument.ptc_str_3</column>
                <column alias="Document"
                    heading="Document Customer Furnished Material (CFM)" type="java.lang.Boolean">WCTYPE|wt.doc.WTDocument~MBA|typeInfoWTDocument.ptc_bln_1</column>
                <column alias="Document"
                    heading="Document Security Classification" type="java.lang.String">WCTYPE|wt.doc.WTDocument~MBA|typeInfoWTDocument.ptc_str_27</column>
                <column alias="Document" heading="Document IP" type="java.lang.String">WCTYPE|wt.doc.WTDocument~MBA|typeInfoWTDocument.ptc_str_25</column>
                <column alias="Document" heading="Document IP Owner" type="java.lang.String">WCTYPE|wt.doc.WTDocument~MBA|typeInfoWTDocument.ptc_str_26</column>
                <column alias="Document" heading="Document Proprietary" type="java.lang.String">WCTYPE|wt.doc.WTDocument~MBA|typeInfoWTDocument.ptc_str_31</column>
                <column alias="Document" heading="Drawing (Y/N)" type="java.lang.String">WCTYPE|wt.doc.WTDocument~MBA|typeInfoWTDocument.ptc_str_20</column>
                <column alias="OneSKY P/ECP" heading="P/ECP Number"
                    propertyName="number" type="java.lang.String">master&gt;number</column>
                <column alias="OneSKY P/ECP" heading="P/ECP Name"
                    propertyName="name" type="java.lang.String">master&gt;name</column>
                <column alias="OneSKY P/ECP" heading="P/ECP Class" type="java.lang.String">WCTYPE|wt.change2.WTChangeRequest2|local.thalesgroup.au.OneSKY_P_ECP~MBA|typeInfoWTChangeRequest2.ptc_str_14</column>
                <column alias="OneSKY P/ECP" heading="P/ECP Created On"
                    propertyName="createTimestamp" type="java.sql.Timestamp">thePersistInfo.createStamp</column>
                <column alias="OneSKY P/ECP"
                    heading="P/ECP Validity Date" type="java.sql.Timestamp">WCTYPE|wt.change2.WTChangeRequest2|local.thalesgroup.au.OneSKY_P_ECP~MBA|typeInfoWTChangeRequest2.ptc_tms_1</column>
                <column alias="OneSKY P/ECP"
                    heading="OneSKY P/ECP Baselines Affected" type="java.lang.String">WCTYPE|wt.change2.WTChangeRequest2|local.thalesgroup.au.OneSKY_P_ECP~IBA|local.thalesgroup.au.Baselines</column>
                <column alias="OneSKY P/ECP"
                    heading="OneSKY P/ECP Applicability (Systems Impacted)" type="java.lang.String">WCTYPE|wt.change2.WTChangeRequest2|local.thalesgroup.au.OneSKY_P_ECP~MBA|typeInfoWTChangeRequest2.ptc_str_26</column>
                <column alias="OneSKY P/ECP"
                    heading="OneSKY P/ECP Other Related CCPs or ECPs" type="java.lang.String">WCTYPE|wt.change2.WTChangeRequest2|local.thalesgroup.au.OneSKY_P_ECP~MBA|typeInfoWTChangeRequest2.ptc_str_25</column>
                <column alias="OneSKY P/ECP"
                    heading="OneSKY P/ECP CCCB Recommended Action" type="java.lang.String">WCTYPE|wt.change2.WTChangeRequest2|local.thalesgroup.au.OneSKY_P_ECP~MBA|typeInfoWTChangeRequest2.ptc_str_43</column>
                <column alias="OneSKY P/ECP"
                    heading="P/ECP CCCB Chairman Signature" type="java.sql.Timestamp">WCTYPE|wt.change2.WTChangeRequest2|local.thalesgroup.au.OneSKY_P_ECP~MBA|typeInfoWTChangeRequest2.ptc_tms_3</column>
            </select>
            <from>
                <table alias="Part" isExternal="false">
wt.part.WTPart
</table>
                <table alias="OneSKY P/ECP" outerJoinAlias="Part">WCTYPE|wt.change2.WTChangeRequest2|local.thalesgroup.au.OneSKY_P_ECP</table>
                <table alias="Document" outerJoinAlias="Part">wt.doc.WTDocument</table>
                <table alias="Part (Uses)" outerJoinAlias="Part">wt.part.WTPart</table>
                <table alias="Part Master" outerJoinAlias="Part">wt.part.WTPartMaster</table>
            </from>
            <where>
                <compositeCondition type="and">
                    <compositeCondition type="or">
                        <condition>
                            <operand>
                                <column alias="Document"
                                    heading="Iteration (iterationInfo).Latest"
                                    propertyName="iterationInfo.latest" type="boolean">iterationInfo.latest</column>
                            </operand>
                            <operator type="equal"/>
                            <operand>
                                <constant heading="1" isMacro="false"
                                    type="java.lang.Object" xml:space="preserve">1</constant>
                            </operand>
                        </condition>
                        <condition>
                            <operand>
                                <column alias="Document"
                                    heading="Iteration (iterationInfo).Latest"
                                    propertyName="iterationInfo.latest" type="boolean">iterationInfo.latest</column>
                            </operand>
                            <nullOperator type="isNull"/>
                        </condition>
                    </compositeCondition>
                    <condition>
                        <operand>
                            <column alias="Part"
                                heading="Iteration (iterationInfo).Latest"
                                propertyName="iterationInfo.latest" type="boolean">iterationInfo.latest</column>
                        </operand>
                        <operator type="equal"/>
                        <operand>
                            <constant heading="1" isMacro="false"
                                type="java.lang.Object" xml:space="preserve">1</constant>
                        </operand>
                    </condition>
                    <compositeCondition type="or">
                        <condition>
                            <operand>
                                <column alias="OneSKY P/ECP"
                                    heading="Iteration (iterationInfo).Latest"
                                    propertyName="iterationInfo.latest" type="boolean">iterationInfo.latest</column>
                            </operand>
                            <operator type="equal"/>
                            <operand>
                                <constant heading="1" isMacro="false"
                                    type="java.lang.Object" xml:space="preserve">1</constant>
                            </operand>
                        </condition>
                        <condition>
                            <operand>
                                <column alias="OneSKY P/ECP"
                                    heading="Iteration (iterationInfo).Latest"
                                    propertyName="iterationInfo.latest" type="boolean">iterationInfo.latest</column>
                            </operand>
                            <nullOperator type="isNull"/>
                        </condition>
                    </compositeCondition>
                    <condition>
                        <operand>
                            <column alias="Part" heading="State"
                                propertyName="lifeCycleState" type="wt.lifecycle.State">state.state</column>
                        </operand>
                        <operator type="equal"/>
                        <operand>
                            <parameterTarget name="Released"/>
                        </operand>
                    </condition>
                </compositeCondition>
            </where>
            <orderBy>
                <orderByItem>
                    <columnTarget heading="Part Number"/>
                </orderByItem>
            </orderBy>
            <linkJoin>
                <join name="wt.part.WTPartDescribeLink">
                    <aliasTarget alias="Part"/>
                    <aliasTarget alias="Document"/>
                </join>
                <join name="wt.part.WTPartUsageLink">
                    <aliasTarget alias="Part"/>
                    <aliasTarget alias="Part Master"/>
                </join>
                <join name="wt.part.MasterIteration">
                    <aliasTarget alias="Part Master"/>
                    <aliasTarget alias="Part (Uses)"/>
                </join>
                <join name="wt.change2.RelevantRequestData2">
                    <aliasTarget alias="OneSKY P/ECP"/>
                    <aliasTarget alias="Part"/>
                </join>
            </linkJoin>
        </query>
    </statement>
</qml>
