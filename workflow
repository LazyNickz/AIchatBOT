<?xml version="1.0" encoding="UTF-8"?>
<bpmn:definitions xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpmn="http://www.omg.org/spec/BPMN/20100524/MODEL" xmlns:bpmndi="http://www.omg.org/spec/BPMN/20100524/DI" xmlns:dc="http://www.omg.org/spec/DD/20100524/DC" xmlns:di="http://www.omg.org/spec/DD/20100524/DI" id="Definitions_04cej4m" targetNamespace="http://bpmn.io/schema/bpmn" exporter="bpmn-js (https://demo.bpmn.io)" exporterVersion="18.6.1">
  <bpmn:collaboration id="Collaboration_0ry46pj">
    <bpmn:participant id="Participant_1tbyg75" name="user" processRef="Process_0fa1a7m" />
    <bpmn:participant id="Participant_176s95v" name="page" processRef="Process_115guug" />
    <bpmn:participant id="Participant_0wtrvg4" name="gemini" processRef="Process_0sigpvk" />
    <bpmn:participant id="Participant_1ni43wb" name="pine cone" processRef="Process_08c6q7b" />
    <bpmn:messageFlow id="Flow_0g3x906" sourceRef="Activity_0ivo4q9" targetRef="Activity_0dtzzuv" />
    <bpmn:messageFlow id="Flow_178w57a" sourceRef="Activity_1c5th21" targetRef="Activity_0rmro6d" />
    <bpmn:messageFlow id="Flow_03xwema" sourceRef="Activity_0rmro6d" targetRef="Activity_05pb7bj" />
    <bpmn:messageFlow id="Flow_1yluzw8" sourceRef="Activity_05pb7bj" targetRef="Activity_1wocu20" />
    <bpmn:messageFlow id="Flow_0jqehsq" sourceRef="Activity_0tdeox6" targetRef="Activity_13kkmew" />
  </bpmn:collaboration>
  <bpmn:process id="Process_0fa1a7m" isExecutable="false">
    <bpmn:startEvent id="StartEvent_1cfehtp">
      <bpmn:outgoing>Flow_11v90e3</bpmn:outgoing>
    </bpmn:startEvent>
    <bpmn:task id="Activity_1hem8yw" name="go to page">
      <bpmn:incoming>Flow_11v90e3</bpmn:incoming>
      <bpmn:outgoing>Flow_1gxteta</bpmn:outgoing>
    </bpmn:task>
    <bpmn:task id="Activity_0ivo4q9" name="send message">
      <bpmn:incoming>Flow_1gxteta</bpmn:incoming>
      <bpmn:incoming>Flow_1dqri1p</bpmn:incoming>
    </bpmn:task>
    <bpmn:endEvent id="Event_0bzyljr">
      <bpmn:incoming>Flow_14w4r1x</bpmn:incoming>
    </bpmn:endEvent>
    <bpmn:exclusiveGateway id="Gateway_0cxop9r">
      <bpmn:incoming>Flow_1x9vh2w</bpmn:incoming>
      <bpmn:outgoing>Flow_1dqri1p</bpmn:outgoing>
      <bpmn:outgoing>Flow_14w4r1x</bpmn:outgoing>
    </bpmn:exclusiveGateway>
    <bpmn:task id="Activity_13kkmew" name="recieve reply">
      <bpmn:outgoing>Flow_1x9vh2w</bpmn:outgoing>
    </bpmn:task>
    <bpmn:sequenceFlow id="Flow_11v90e3" sourceRef="StartEvent_1cfehtp" targetRef="Activity_1hem8yw" />
    <bpmn:sequenceFlow id="Flow_1gxteta" sourceRef="Activity_1hem8yw" targetRef="Activity_0ivo4q9" />
    <bpmn:sequenceFlow id="Flow_1dqri1p" sourceRef="Gateway_0cxop9r" targetRef="Activity_0ivo4q9" />
    <bpmn:sequenceFlow id="Flow_14w4r1x" sourceRef="Gateway_0cxop9r" targetRef="Event_0bzyljr" />
    <bpmn:sequenceFlow id="Flow_1x9vh2w" sourceRef="Activity_13kkmew" targetRef="Gateway_0cxop9r" />
  </bpmn:process>
  <bpmn:process id="Process_115guug">
    <bpmn:task id="Activity_0dtzzuv" name="recieve message">
      <bpmn:outgoing>Flow_12sk19y</bpmn:outgoing>
    </bpmn:task>
    <bpmn:task id="Activity_1c5th21" name="send to gemini">
      <bpmn:incoming>Flow_12sk19y</bpmn:incoming>
    </bpmn:task>
    <bpmn:task id="Activity_1wocu20" name="page recieve response from gemini">
      <bpmn:outgoing>Flow_11t54ki</bpmn:outgoing>
    </bpmn:task>
    <bpmn:task id="Activity_0tdeox6" name="page send the reply to user">
      <bpmn:incoming>Flow_11t54ki</bpmn:incoming>
    </bpmn:task>
    <bpmn:sequenceFlow id="Flow_12sk19y" sourceRef="Activity_0dtzzuv" targetRef="Activity_1c5th21" />
    <bpmn:sequenceFlow id="Flow_11t54ki" sourceRef="Activity_1wocu20" targetRef="Activity_0tdeox6" />
  </bpmn:process>
  <bpmn:process id="Process_0sigpvk">
    <bpmn:task id="Activity_0rmro6d" name="gemini generate responds" />
  </bpmn:process>
  <bpmn:process id="Process_08c6q7b">
    <bpmn:task id="Activity_05pb7bj" name="record convo for memory" />
  </bpmn:process>
  <bpmndi:BPMNDiagram id="BPMNDiagram_1">
    <bpmndi:BPMNPlane id="BPMNPlane_1" bpmnElement="Collaboration_0ry46pj">
      <bpmndi:BPMNShape id="Participant_1tbyg75_di" bpmnElement="Participant_1tbyg75" isHorizontal="true">
        <dc:Bounds x="152" y="80" width="600" height="250" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNShape id="_BPMNShape_StartEvent_2" bpmnElement="StartEvent_1cfehtp">
        <dc:Bounds x="202" y="172" width="36" height="36" />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNShape id="Activity_1hem8yw_di" bpmnElement="Activity_1hem8yw">
        <dc:Bounds x="280" y="150" width="100" height="80" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNShape id="Activity_0ivo4q9_di" bpmnElement="Activity_0ivo4q9">
        <dc:Bounds x="430" y="150" width="100" height="80" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNShape id="Event_0bzyljr_di" bpmnElement="Event_0bzyljr">
        <dc:Bounds x="612" y="92" width="36" height="36" />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNShape id="Gateway_0cxop9r_di" bpmnElement="Gateway_0cxop9r" isMarkerVisible="true">
        <dc:Bounds x="605" y="165" width="50" height="50" />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNShape id="Activity_13kkmew_di" bpmnElement="Activity_13kkmew">
        <dc:Bounds x="580" y="230" width="100" height="80" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNEdge id="Flow_11v90e3_di" bpmnElement="Flow_11v90e3">
        <di:waypoint x="238" y="190" />
        <di:waypoint x="280" y="190" />
      </bpmndi:BPMNEdge>
      <bpmndi:BPMNEdge id="Flow_1gxteta_di" bpmnElement="Flow_1gxteta">
        <di:waypoint x="380" y="190" />
        <di:waypoint x="430" y="190" />
      </bpmndi:BPMNEdge>
      <bpmndi:BPMNEdge id="Flow_1x9vh2w_di" bpmnElement="Flow_1x9vh2w">
        <di:waypoint x="630" y="230" />
        <di:waypoint x="630" y="215" />
      </bpmndi:BPMNEdge>
      <bpmndi:BPMNEdge id="Flow_1dqri1p_di" bpmnElement="Flow_1dqri1p">
        <di:waypoint x="605" y="190" />
        <di:waypoint x="530" y="190" />
      </bpmndi:BPMNEdge>
      <bpmndi:BPMNEdge id="Flow_14w4r1x_di" bpmnElement="Flow_14w4r1x">
        <di:waypoint x="630" y="165" />
        <di:waypoint x="630" y="128" />
      </bpmndi:BPMNEdge>
      <bpmndi:BPMNShape id="Participant_176s95v_di" bpmnElement="Participant_176s95v" isHorizontal="true">
        <dc:Bounds x="152" y="400" width="600" height="250" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNShape id="Activity_0dtzzuv_di" bpmnElement="Activity_0dtzzuv">
        <dc:Bounds x="430" y="440" width="100" height="80" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNShape id="Activity_1c5th21_di" bpmnElement="Activity_1c5th21">
        <dc:Bounds x="280" y="440" width="100" height="80" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNShape id="Activity_1wocu20_di" bpmnElement="Activity_1wocu20">
        <dc:Bounds x="580" y="540" width="100" height="80" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNShape id="Activity_0tdeox6_di" bpmnElement="Activity_0tdeox6">
        <dc:Bounds x="580" y="430" width="100" height="80" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNEdge id="Flow_12sk19y_di" bpmnElement="Flow_12sk19y">
        <di:waypoint x="430" y="480" />
        <di:waypoint x="380" y="480" />
      </bpmndi:BPMNEdge>
      <bpmndi:BPMNEdge id="Flow_11t54ki_di" bpmnElement="Flow_11t54ki">
        <di:waypoint x="630" y="540" />
        <di:waypoint x="630" y="510" />
      </bpmndi:BPMNEdge>
      <bpmndi:BPMNShape id="Participant_0wtrvg4_di" bpmnElement="Participant_0wtrvg4" isHorizontal="true">
        <dc:Bounds x="152" y="650" width="600" height="250" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNShape id="Activity_0rmro6d_di" bpmnElement="Activity_0rmro6d">
        <dc:Bounds x="280" y="710" width="100" height="80" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNShape id="Participant_1ni43wb_di" bpmnElement="Participant_1ni43wb" isHorizontal="true">
        <dc:Bounds x="152" y="900" width="600" height="250" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNShape id="Activity_05pb7bj_di" bpmnElement="Activity_05pb7bj">
        <dc:Bounds x="310" y="970" width="100" height="80" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNEdge id="Flow_0g3x906_di" bpmnElement="Flow_0g3x906">
        <di:waypoint x="480" y="230" />
        <di:waypoint x="480" y="440" />
      </bpmndi:BPMNEdge>
      <bpmndi:BPMNEdge id="Flow_178w57a_di" bpmnElement="Flow_178w57a">
        <di:waypoint x="330" y="520" />
        <di:waypoint x="330" y="710" />
      </bpmndi:BPMNEdge>
      <bpmndi:BPMNEdge id="Flow_03xwema_di" bpmnElement="Flow_03xwema">
        <di:waypoint x="330" y="790" />
        <di:waypoint x="330" y="970" />
      </bpmndi:BPMNEdge>
      <bpmndi:BPMNEdge id="Flow_1yluzw8_di" bpmnElement="Flow_1yluzw8">
        <di:waypoint x="410" y="1010" />
        <di:waypoint x="650" y="1010" />
        <di:waypoint x="650" y="620" />
      </bpmndi:BPMNEdge>
      <bpmndi:BPMNEdge id="Flow_0jqehsq_di" bpmnElement="Flow_0jqehsq">
        <di:waypoint x="630" y="430" />
        <di:waypoint x="630" y="310" />
      </bpmndi:BPMNEdge>
    </bpmndi:BPMNPlane>
  </bpmndi:BPMNDiagram>
</bpmn:definitions>
