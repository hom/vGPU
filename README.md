<h1>Hyper-V 独立显卡虚拟化教程 【vGPU】显卡直通-零度博客</h1>
<div class="lake-content" typography="classic">
  <p id="u7b4a2413" class="ne-p">
    <img src="https://cdn.nlark.com/yuque/0/2024/webp/218985/1733726071804-62d6ae65-9e59-4164-9b76-0b9a4ffa01cb.webp" width="1540" id="ue35f9375" class="ne-image"></p><pre data-language="plain" id="Sxxp8" class="ne-codeblock language-plain"><code>$vm = &quot;虚拟机的名字&quot;</code></pre><pre data-language="plain" id="carkF" class="ne-codeblock language-plain"><code>Add-VMGpuPartitionAdapter -VMName $vm</code></pre><pre data-language="plain" id="xaZdf" class="ne-codeblock language-plain"><code>Set-VMGpuPartitionAdapter -VMName $vm -MinPartitionVRAM 80000000 -MaxPartitionVRAM 100000000 -OptimalPartitionVRAM 100000000 -MinPartitionEncode 80000000 -MaxPartitionEncode 100000000 -OptimalPartitionEncode 100000000 -MinPartitionDecode 80000000 -MaxPartitionDecode 100000000 -OptimalPartitionDecode 100000000 -MinPartitionCompute 80000000 -MaxPartitionCompute 100000000 -OptimalPartitionCompute 100000000</code></pre><pre data-language="plain" id="rPOIn" class="ne-codeblock language-plain"><code>Set-VM -GuestControlledCacheTypes $true -VMName $vm</code></pre><pre data-language="plain" id="pm26w" class="ne-codeblock language-plain"><code>Set-VM -LowMemoryMappedIoSpace 1Gb -VMName $vm</code></pre><pre data-language="plain" id="DZtcc" class="ne-codeblock language-plain"><code>Set-VM -HighMemoryMappedIoSpace 32GB -VMName $vm</code></pre>
  <p id="u00b7007c" class="ne-p"><span class="ne-text"></span></p>
  <p id="u1449a0d4" class="ne-p"><span class="ne-text">—————————-驱动拷贝目录——————————————–</span></p>
  <p id="u7352bf1f" class="ne-p"><span class="ne-text">①宿主机驱动路径：C:\Windows\System32\DriverStore\FileRepository\</span></p>
  <p id="u330d4de5" class="ne-p"><span class="ne-text">①虚拟机拷贝路径：C:\Windows\System32\HostDriverStore\FileRepository\</span></p>
  <p id="u05bb08f7" class="ne-p"><span class="ne-text"></span></p>
  <p id="u3766f2a1" class="ne-p"><span class="ne-text">②N卡操作</span></p>
  <p id="u9760a19f" class="ne-p"><span class="ne-text">宿主机文件路径：C:\Windows\System32\nvapi64.dll</span></p>
  <p id="u5ad401f2" class="ne-p"><span class="ne-text">虚拟机拷贝路径：C:\Windows\System32\nvapi64.dll</span></p>
  <p id="u0799e185" class="ne-p"><span class="ne-text"></span></p>
  <p id="udba919ba" class="ne-p"><span class="ne-text">②A卡操作</span></p>
  <p id="ucdb9969b" class="ne-p"><span class="ne-text">所有宿主机，驱动管理器，显卡驱动信息里的文件都必须全部拷贝到虚拟机里（路径和宿主机相同）<br /></span></p>
  <div class="ne-quote">
    <p id="uc20269c2" class="ne-p"><span class="ne-text">来自: </span><a href="https://www.freedidi.com/9857.html" data-href="https://www.freedidi.com/9857.html" target="_blank" class="ne-link"><span class="ne-text">Hyper-V 独立显卡虚拟化教程 【vGPU】显卡直通-零度博客</span></a></p>
  </div>
</div>
