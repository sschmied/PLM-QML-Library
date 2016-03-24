<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE qml SYSTEM "/wt/query/qml/qml.dtd">
<qml bypassAccessControl="true">
    <statement>
        <query>
            <select group="true">
                <column alias="Audit Record" heading="User"
                    propertyName="userName" type="java.lang.String">userName</column>
                <column alias="Audit Record"
                    heading="Org Container Name"
                    propertyName="userOrgName" type="java.lang.String">userOrgName</column>
                <column alias="User" heading="Account Created"
                    propertyName="createTimestamp" type="java.sql.Timestamp">thePersistInfo.createStamp</column>
                <function heading="Most Recent Login" name="MAX" type="java.sql.Timestamp">
                    <column alias="Audit Record" heading="Created"
                        propertyName="createTimestamp" type="java.sql.Timestamp">thePersistInfo.createStamp</column>
                </function>
                <column alias="User" heading="Disabled"
                    propertyName="disabled" type="boolean">disabled</column>
                <column alias="User" heading="Email"
                    propertyName="eMail" type="java.lang.String">eMail</column>
            </select>
            <from>
                <table alias="Audit Record">wt.audit.AuditRecord</table>
                <table alias="User">wt.org.WTUser</table>
            </from>
            <where>
                <compositeCondition type="and">
                    <condition>
                        <operand>
                            <column alias="Audit Record"
                                heading="Event Label"
                                propertyName="eventLabel" type="java.lang.String">eventLabel</column>
                        </operand>
                        <operator type="equal"/>
                        <operand>
                            <constant heading="Login" isMacro="false"
                                type="java.lang.String" xml:space="preserve">Login</constant>
                        </operand>
                    </condition>
                    <compositeCondition type="or">
                        <condition>
                            <operand>
                                <column alias="Audit Record"
                                    heading="Created"
                                    propertyName="createTimestamp" type="java.sql.Timestamp">thePersistInfo.createStamp</column>
                            </operand>
                            <operator type="greaterThanOrEqual"/>
                            <operand>
                                <function heading="Subtract"
                                    name="SUBTRACT" type="java.util.Date">
                                    <function heading="System Date"
                                    name="SYSDATE" type="java.util.Date"/>
                                    <constant heading="500"
                                    isMacro="false"
                                    type="java.lang.Number" xml:space="preserve">500</constant>
                                </function>
                            </operand>
                        </condition>
                        <condition>
                            <operand>
                                <column alias="Audit Record"
                                    heading="Created"
                                    propertyName="createTimestamp" type="java.sql.Timestamp">thePersistInfo.createStamp</column>
                            </operand>
                            <nullOperator type="isNull"/>
                        </condition>
                    </compositeCondition>
                    <condition>
                        <operand>
                            <column alias="Audit Record"
                                heading="User ID.Id"
                                propertyName="userID.id" type="long">userID.id</column>
                        </operand>
                        <operator type="equal"/>
                        <operand>
                            <column alias="User"
                                heading="Persist Info.Object Identifier.Id"
                                propertyName="persistInfo.objectIdentifier.id" type="long">thePersistInfo.theObjectIdentifier.id</column>
                        </operand>
                    </condition>
                    <condition>
                        <operand>
                            <column alias="User" heading="Disabled"
                                propertyName="disabled" type="boolean">disabled</column>
                        </operand>
                        <operator type="equal"/>
                        <operand>
                            <constant heading="0" isMacro="false"
                                type="java.lang.Object" xml:space="preserve">0</constant>
                        </operand>
                    </condition>
                </compositeCondition>
            </where>
            <orderBy>
                <orderByItem>
                    <columnTarget heading="User"/>
                </orderByItem>
            </orderBy>
        </query>
    </statement>
</qml>
