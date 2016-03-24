<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE qml SYSTEM "/wt/query/qml/qml.dtd">
<qml bypassAccessControl="true">
    <parameter name="Released" type="wt.lifecycle.State">
        <parameterDefault isMacro="false">RELEASED</parameterDefault>
    </parameter>
    <statement>
        <query>
            <select distinct="true" group="true">
                <column alias="Part" heading="Part Number"
                    propertyName="number" type="java.lang.String">master&gt;number</column>
                <column alias="Part" heading="Part Name"
                    propertyName="name" type="java.lang.String">master&gt;name</column>
                <column alias="Part" heading="Part State"
                    propertyName="lifeCycleState" type="wt.lifecycle.State">state.state</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="Form SG2 Number" propertyName="number" type="java.lang.String">master&gt;number</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="Form SG2 Name" propertyName="name" type="java.lang.String">master&gt;name</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="State" propertyName="lifeCycleState" type="wt.lifecycle.State">state.state</column>
                <column alias="Document" heading="Document Number"
                    propertyName="number" type="java.lang.String">master&gt;number</column>
                <column alias="Document" heading="Document Name"
                    propertyName="name" type="java.lang.String">master&gt;name</column>
            </select>
            <from>
                <table alias="Form SG2 Application For Deviation">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation</table>
                <table alias="Document" outerJoinAlias="Form SG2 Application For Deviation">wt.doc.WTDocument</table>
                <table alias="Part" outerJoinAlias="Form SG2 Application For Deviation">wt.part.WTPart</table>
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
                    <compositeCondition type="or">
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
                        <condition>
                            <operand>
                                <column alias="Part"
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
            <linkJoin>
                <join name="wt.change2.ReportedAgainst">
                    <aliasTarget alias="Form SG2 Application For Deviation"/>
                    <aliasTarget alias="Document"/>
                </join>
                <join name="wt.change2.ReportedAgainst">
                    <aliasTarget alias="Form SG2 Application For Deviation"/>
                    <aliasTarget alias="Part"/>
                </join>
            </linkJoin>
        </query>
    </statement>
</qml>
