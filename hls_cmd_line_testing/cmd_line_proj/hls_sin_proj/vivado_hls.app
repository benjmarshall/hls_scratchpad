<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" projectType="C/C++" name="hls_sin_proj" top="sin_taylor_series">
    <Simulation argv="">
        <SimFlow name="csim" setup="false" optimizeCompile="false" clean="true" ldflags="" mflags=""/>
    </Simulation>
    <files>
        <file name="../../../source_files/tb/testbench.cpp" sc="0" tb="1" cflags=" "/>
        <file name="../source_files/src/dut.h" sc="0" tb="false" cflags=""/>
        <file name="../source_files/src/dut.cpp" sc="0" tb="false" cflags=""/>
    </files>
    <solutions>
        <solution name="solution1" status=""/>
    </solutions>
</AutoPilot:project>

