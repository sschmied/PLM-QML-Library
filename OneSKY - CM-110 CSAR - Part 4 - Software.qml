<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE qml SYSTEM "/wt/query/qml/qml.dtd">
<qml>
    <parameter name="Released" type="wt.lifecycle.State">
        <parameterDefault isMacro="false">RELEASED</parameterDefault>
    </parameter>
    <statement>
        <query>
            <select>
                <column alias="Software" heading="Part Number"
                    propertyName="number" type="java.lang.String">master&gt;number</column>
                <column alias="Software" heading="Part Name"
                    propertyName="name" type="java.lang.String">master&gt;name</column>
                <column alias="Software" heading="Part State"
                    propertyName="lifeCycleState" type="wt.lifecycle.State">state.state</column>
                <column alias="Software" heading="Part Medium" type="java.lang.String">WCTYPE|wt.part.WTPart|local.thalesgroup.au.Part_Software~MBA|typeInfoWTPart.ptc_str_32</column>
            </select>
            <from>
                <table alias="Software">WCTYPE|wt.part.WTPart|local.thalesgroup.au.Part_Software</table>
            </from>
            <where>
                <compositeCondition type="and">
                    <condition>
                        <operand>
                            <column alias="Software"
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
                            <column alias="Software" heading="State"
                                propertyName="lifeCycleState" type="wt.lifecycle.State">state.state</column>
                        </operand>
                        <operator type="equal"/>
                        <operand>
                            <parameterTarget name="Released"/>
                        </operand>
                    </condition>
                </compositeCondition>
            </where>
        </query>
    </statement>
</qml>
