<p:declare-step xmlns:ex="http://example.com/ns/xproc-extensions" xmlns:t="http://xproc.org/ns/testsuite" xmlns:p="http://www.w3.org/ns/xproc" xmlns:c="http://www.w3.org/ns/xproc-step" xmlns:err="http://www.w3.org/ns/xproc-error" version="1.0">
      <p:output port="result"/>

      <p:declare-step type="ex:unimplemented">
	<p:input port="source"/>
	<p:output port="result"/>
      </p:declare-step>

      <p:choose>
	<p:when test="p:step-available('ex:unimplemented')">
	  <p:xpath-context>
	    <p:empty/>
	  </p:xpath-context>
	  <ex:unimplemented>
	    <p:input port="source">
	      <p:inline>
		<doc>I don't think so.</doc>
	      </p:inline>
	    </p:input>
	  </ex:unimplemented>
	</p:when>
	<p:otherwise>
	  <p:identity>
	    <p:input port="source">
	      <p:inline>
		<doc>Success.</doc>
	      </p:inline>
	    </p:input>
	  </p:identity>
	</p:otherwise>
      </p:choose>
    </p:declare-step>