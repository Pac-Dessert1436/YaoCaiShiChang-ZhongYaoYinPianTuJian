; ModuleID = 'marshal_methods.x86_64.ll'
source_filename = "marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [179 x ptr] zeroinitializer, align 16

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [537 x i64] [
	i64 u0x001e58127c546039, ; 0: lib_System.Globalization.dll.so => 42
	i64 u0x01109b0e4d99e61f, ; 1: System.ComponentModel.Annotations.dll => 13
	i64 u0x0284512fad379f7e, ; 2: System.Runtime.Handles => 105
	i64 u0x02abedc11addc1ed, ; 3: lib_Mono.Android.Runtime.dll.so => 171
	i64 u0x02f55bf70672f5c8, ; 4: lib_System.IO.FileSystem.DriveInfo.dll.so => 48
	i64 u0x03621c804933a890, ; 5: System.Buffers => 7
	i64 u0x0399610510a38a38, ; 6: lib_System.Private.DataContractSerialization.dll.so => 86
	i64 u0x0517ef04e06e9f76, ; 7: System.Net.Primitives => 71
	i64 u0x0581db89237110e9, ; 8: lib_System.Collections.dll.so => 12
	i64 u0x05a1c25e78e22d87, ; 9: lib_System.Runtime.CompilerServices.Unsafe.dll.so => 102
	i64 u0x06388ffe9f6c161a, ; 10: System.Xml.Linq.dll => 156
	i64 u0x06600c4c124cb358, ; 11: System.Configuration.dll => 19
	i64 u0x069fff96ec92a91d, ; 12: System.Xml.XPath.dll => 161
	i64 u0x07469f2eecce9e85, ; 13: mscorlib.dll => 167
	i64 u0x07dcdc7460a0c5e4, ; 14: System.Collections.NonGeneric => 10
	i64 u0x08a7c865576bbde7, ; 15: System.Reflection.Primitives => 96
	i64 u0x09138715c92dba90, ; 16: lib_System.ComponentModel.Annotations.dll.so => 13
	i64 u0x092266563089ae3e, ; 17: lib_System.Collections.NonGeneric.dll.so => 10
	i64 u0x09d144a7e214d457, ; 18: System.Security.Cryptography => 127
	i64 u0x09e2b9f743db21a8, ; 19: lib_System.Reflection.Metadata.dll.so => 95
	i64 u0x0abb3e2b271edc45, ; 20: System.Threading.Channels.dll => 140
	i64 u0x0b06b1feab070143, ; 21: System.Formats.Tar => 39
	i64 u0x0c59ad9fbbd43abe, ; 22: Mono.Android => 172
	i64 u0x0c74af560004e816, ; 23: Microsoft.Win32.Registry.dll => 5
	i64 u0x0c83c82812e96127, ; 24: lib_System.Net.Mail.dll.so => 67
	i64 u0x0d13cd7cce4284e4, ; 25: System.Security.SecureString => 130
	i64 u0x0e14e73a54dda68e, ; 26: lib_System.Net.NameResolution.dll.so => 68
	i64 u0x0f5e7abaa7cf470a, ; 27: System.Net.HttpListener => 66
	i64 u0x1001f97bbe242e64, ; 28: System.IO.UnmanagedMemoryStream => 57
	i64 u0x1065c4cb554c3d75, ; 29: System.IO.IsolatedStorage.dll => 52
	i64 u0x10f6cfcbcf801616, ; 30: System.IO.Compression.Brotli => 43
	i64 u0x114443cdcf2091f1, ; 31: System.Security.Cryptography.Primitives => 125
	i64 u0x11a603952763e1d4, ; 32: System.Net.Mail => 67
	i64 u0x11a70d0e1009fb11, ; 33: System.Net.WebSockets.dll => 81
	i64 u0x11fbe62d469cc1c8, ; 34: Microsoft.VisualStudio.DesignTools.TapContract.dll => 176
	i64 u0x12128b3f59302d47, ; 35: lib_System.Xml.Serialization.dll.so => 158
	i64 u0x123639456fb056da, ; 36: System.Reflection.Emit.Lightweight.dll => 92
	i64 u0x12521e9764603eaa, ; 37: lib_System.Resources.Reader.dll.so => 99
	i64 u0x12d3b63863d4ab0b, ; 38: lib_System.Threading.Overlapped.dll.so => 141
	i64 u0x134eab1061c395ee, ; 39: System.Transactions => 151
	i64 u0x13a76388b9f952fe, ; 40: 药材市场中药饮片图鉴.dll => 0
	i64 u0x13beedefb0e28a45, ; 41: lib_System.Xml.XmlDocument.dll.so => 162
	i64 u0x13f1e5e209e91af4, ; 42: lib_Java.Interop.dll.so => 169
	i64 u0x1497051b917530bd, ; 43: lib_System.Net.WebSockets.dll.so => 81
	i64 u0x14b78ce3adce0011, ; 44: Microsoft.VisualStudio.DesignTools.TapContract => 176
	i64 u0x152a448bd1e745a7, ; 45: Microsoft.Win32.Primitives => 4
	i64 u0x1557de0138c445f4, ; 46: lib_Microsoft.Win32.Registry.dll.so => 5
	i64 u0x15bdc156ed462f2f, ; 47: lib_System.IO.FileSystem.dll.so => 51
	i64 u0x15e300c2c1668655, ; 48: System.Resources.Writer.dll => 101
	i64 u0x16bf2a22df043a09, ; 49: System.IO.Pipes.dll => 56
	i64 u0x16ea2b318ad2d830, ; 50: System.Security.Cryptography.Algorithms => 120
	i64 u0x16eeae54c7ebcc08, ; 51: System.Reflection.dll => 98
	i64 u0x17125c9a85b4929f, ; 52: lib_netstandard.dll.so => 168
	i64 u0x1716866f7416792e, ; 53: lib_System.Security.AccessControl.dll.so => 118
	i64 u0x1752c12f1e1fc00c, ; 54: System.Core => 21
	i64 u0x17f9358913beb16a, ; 55: System.Text.Encodings.Web => 137
	i64 u0x1809fb23f29ba44a, ; 56: lib_System.Reflection.TypeExtensions.dll.so => 97
	i64 u0x18a9befae51bb361, ; 57: System.Net.WebClient => 77
	i64 u0x19a4c090f14ebb66, ; 58: System.Security.Claims => 119
	i64 u0x1a20143fc010bf8b, ; 59: 药材市场中药饮片图鉴 => 0
	i64 u0x1a91866a319e9259, ; 60: lib_System.Collections.Concurrent.dll.so => 8
	i64 u0x1aac34d1917ba5d3, ; 61: lib_System.dll.so => 165
	i64 u0x1aea8f1c3b282172, ; 62: lib_System.Net.Ping.dll.so => 70
	i64 u0x1c753b5ff15bce1b, ; 63: Mono.Android.Runtime.dll => 171
	i64 u0x1cd47467799d8250, ; 64: System.Threading.Tasks.dll => 145
	i64 u0x1d23eafdc6dc346c, ; 65: System.Globalization.Calendars.dll => 40
	i64 u0x1db6820994506bf5, ; 66: System.IO.FileSystem.AccessControl.dll => 47
	i64 u0x1dbb0c2c6a999acb, ; 67: System.Diagnostics.StackTrace => 30
	i64 u0x1e7c31185e2fb266, ; 68: lib_System.Threading.Tasks.Parallel.dll.so => 144
	i64 u0x1f055d15d807e1b2, ; 69: System.Xml.XmlSerializer => 163
	i64 u0x1f1ed22c1085f044, ; 70: lib_System.Diagnostics.FileVersionInfo.dll.so => 28
	i64 u0x1f61df9c5b94d2c1, ; 71: lib_System.Numerics.dll.so => 84
	i64 u0x20237ea48006d7a8, ; 72: lib_System.Net.WebClient.dll.so => 77
	i64 u0x209375905fcc1bad, ; 73: lib_System.IO.Compression.Brotli.dll.so => 43
	i64 u0x20fab3cf2dfbc8df, ; 74: lib_System.Diagnostics.Process.dll.so => 29
	i64 u0x2110167c128cba15, ; 75: System.Globalization => 42
	i64 u0x21419508838f7547, ; 76: System.Runtime.CompilerServices.VisualC => 103
	i64 u0x2174319c0d835bc9, ; 77: System.Runtime => 117
	i64 u0x219ea1b751a4dee4, ; 78: lib_System.IO.Compression.ZipFile.dll.so => 45
	i64 u0x21cc7e445dcd5469, ; 79: System.Reflection.Emit.ILGeneration => 91
	i64 u0x224538d85ed15a82, ; 80: System.IO.Pipes => 56
	i64 u0x22908438c6bed1af, ; 81: lib_System.Threading.Timer.dll.so => 148
	i64 u0x22fbc14e981e3b45, ; 82: lib_Microsoft.VisualStudio.DesignTools.MobileTapContracts.dll.so => 175
	i64 u0x237be844f1f812c7, ; 83: System.Threading.Thread.dll => 146
	i64 u0x23852b3bdc9f7096, ; 84: System.Resources.ResourceManager => 100
	i64 u0x23986dd7e5d4fc01, ; 85: System.IO.FileSystem.Primitives.dll => 49
	i64 u0x2407aef2bbe8fadf, ; 86: System.Console => 20
	i64 u0x247619fe4413f8bf, ; 87: System.Runtime.Serialization.Primitives.dll => 114
	i64 u0x26a670e154a9c54b, ; 88: System.Reflection.Extensions.dll => 94
	i64 u0x26d077d9678fe34f, ; 89: System.IO.dll => 58
	i64 u0x2759af78ab94d39b, ; 90: System.Net.WebSockets => 81
	i64 u0x27b410442fad6cf1, ; 91: Java.Interop.dll => 169
	i64 u0x27b97e0d52c3034a, ; 92: System.Diagnostics.Debug => 26
	i64 u0x2801845a2c71fbfb, ; 93: System.Net.Primitives.dll => 71
	i64 u0x29f947844fb7fc11, ; 94: Microsoft.Maui.Controls.HotReload.Forms => 174
	i64 u0x2a3b095612184159, ; 95: lib_System.Net.NetworkInformation.dll.so => 69
	i64 u0x2a6507a5ffabdf28, ; 96: System.Diagnostics.TraceSource.dll => 33
	i64 u0x2ad5d6b13b7a3e04, ; 97: System.ComponentModel.DataAnnotations.dll => 14
	i64 u0x2af298f63581d886, ; 98: System.Text.RegularExpressions.dll => 139
	i64 u0x2afc1c4f898552ee, ; 99: lib_System.Formats.Asn1.dll.so => 38
	i64 u0x2cbd9262ca785540, ; 100: lib_System.Text.Encoding.CodePages.dll.so => 134
	i64 u0x2cc9e1fed6257257, ; 101: lib_System.Reflection.Emit.Lightweight.dll.so => 92
	i64 u0x2cd723e9fe623c7c, ; 102: lib_System.Private.Xml.Linq.dll.so => 88
	i64 u0x2d169d318a968379, ; 103: System.Threading.dll => 149
	i64 u0x2d5ffcae1ad0aaca, ; 104: System.Data.dll => 24
	i64 u0x2db915caf23548d2, ; 105: System.Text.Json.dll => 138
	i64 u0x2dcaa0bb15a4117a, ; 106: System.IO.UnmanagedMemoryStream.dll => 57
	i64 u0x2e5a40c319acb800, ; 107: System.IO.FileSystem => 51
	i64 u0x2f02f94df3200fe5, ; 108: System.Diagnostics.Process => 29
	i64 u0x2f2e98e1c89b1aff, ; 109: System.Xml.ReaderWriter => 157
	i64 u0x2f5911d9ba814e4e, ; 110: System.Diagnostics.Tracing => 34
	i64 u0x2f84070a459bc31f, ; 111: lib_System.Xml.dll.so => 164
	i64 u0x30c6dda129408828, ; 112: System.IO.IsolatedStorage => 52
	i64 u0x31195fef5d8fb552, ; 113: _Microsoft.Android.Resource.Designer.dll => 178
	i64 u0x31496b779ed0663d, ; 114: lib_System.Reflection.DispatchProxy.dll.so => 90
	i64 u0x3235427f8d12dae1, ; 115: lib_System.Drawing.Primitives.dll.so => 35
	i64 u0x32aa989ff07a84ff, ; 116: lib_System.Xml.ReaderWriter.dll.so => 157
	i64 u0x33829542f112d59b, ; 117: System.Collections.Immutable => 9
	i64 u0x341abc357fbb4ebf, ; 118: lib_System.Net.Sockets.dll.so => 76
	i64 u0x3496c1e2dcaf5ecc, ; 119: lib_System.IO.Pipes.AccessControl.dll.so => 55
	i64 u0x353590da528c9d22, ; 120: System.ComponentModel.Annotations => 13
	i64 u0x355c649948d55d97, ; 121: lib_System.Runtime.Intrinsics.dll.so => 109
	i64 u0x3628ab68db23a01a, ; 122: lib_System.Diagnostics.Tools.dll.so => 32
	i64 u0x3673b042508f5b6b, ; 123: lib_System.Runtime.Extensions.dll.so => 104
	i64 u0x36740f1a8ecdc6c4, ; 124: System.Numerics => 84
	i64 u0x36b2b50fdf589ae2, ; 125: System.Reflection.Emit.Lightweight => 92
	i64 u0x36cada77dc79928b, ; 126: System.IO.MemoryMappedFiles => 53
	i64 u0x374ef46b06791af6, ; 127: System.Reflection.Primitives.dll => 96
	i64 u0x37bc29f3183003b6, ; 128: lib_System.IO.dll.so => 58
	i64 u0x380134e03b1e160a, ; 129: System.Collections.Immutable.dll => 9
	i64 u0x38049b5c59b39324, ; 130: System.Runtime.CompilerServices.Unsafe => 102
	i64 u0x38869c811d74050e, ; 131: System.Net.NameResolution.dll => 68
	i64 u0x3ab5859054645f72, ; 132: System.Security.Cryptography.Primitives.dll => 125
	i64 u0x3ae44ac43a1fbdbb, ; 133: System.Runtime.Serialization => 116
	i64 u0x3b860f9932505633, ; 134: lib_System.Text.Encoding.Extensions.dll.so => 135
	i64 u0x3c3aafb6b3a00bf6, ; 135: lib_System.Security.Cryptography.X509Certificates.dll.so => 126
	i64 u0x3c4049146b59aa90, ; 136: System.Runtime.InteropServices.JavaScript => 106
	i64 u0x3c7e5ed3d5db71bb, ; 137: System.Security => 131
	i64 u0x3d2b1913edfc08d7, ; 138: lib_System.Threading.ThreadPool.dll.so => 147
	i64 u0x3d46f0b995082740, ; 139: System.Xml.Linq => 156
	i64 u0x3e57d4d195c53c2e, ; 140: System.Reflection.TypeExtensions => 97
	i64 u0x3e616ab4ed1f3f15, ; 141: lib_System.Data.dll.so => 24
	i64 u0x3f510adf788828dd, ; 142: System.Threading.Tasks.Extensions => 143
	i64 u0x40c98b6bd77346d4, ; 143: Microsoft.VisualBasic.dll => 3
	i64 u0x41833cf766d27d96, ; 144: mscorlib => 167
	i64 u0x423a9ecc4d905a88, ; 145: lib_System.Resources.ResourceManager.dll.so => 100
	i64 u0x423bf51ae7def810, ; 146: System.Xml.XPath => 161
	i64 u0x42462ff15ddba223, ; 147: System.Resources.Reader.dll => 99
	i64 u0x42a31b86e6ccc3f0, ; 148: System.Diagnostics.Contracts => 25
	i64 u0x430e95b891249788, ; 149: lib_System.Reflection.Emit.dll.so => 93
	i64 u0x43375950ec7c1b6a, ; 150: netstandard.dll => 168
	i64 u0x434c4e1d9284cdae, ; 151: Mono.Android.dll => 172
	i64 u0x437d06c381ed575a, ; 152: lib_Microsoft.VisualBasic.dll.so => 3
	i64 u0x448bd33429269b19, ; 153: Microsoft.CSharp => 1
	i64 u0x4499fa3c8e494654, ; 154: lib_System.Runtime.Serialization.Primitives.dll.so => 114
	i64 u0x45c40276a42e283e, ; 155: System.Diagnostics.TraceSource => 33
	i64 u0x45d443f2a29adc37, ; 156: System.AppContext.dll => 6
	i64 u0x47358bd471172e1d, ; 157: lib_System.Xml.Linq.dll.so => 156
	i64 u0x480c0a47dd42dd81, ; 158: lib_System.IO.MemoryMappedFiles.dll.so => 53
	i64 u0x49e952f19a4e2022, ; 159: System.ObjectModel => 85
	i64 u0x4a7a18981dbd56bc, ; 160: System.IO.Compression.FileSystem.dll => 44
	i64 u0x4b07a0ed0ab33ff4, ; 161: System.Runtime.Extensions.dll => 104
	i64 u0x4b576d47ac054f3c, ; 162: System.IO.FileSystem.AccessControl => 47
	i64 u0x4b7b6532ded934b7, ; 163: System.Text.Json => 138
	i64 u0x4c7755cf07ad2d5f, ; 164: System.Net.Http.Json.dll => 64
	i64 u0x4cf6f67dc77aacd2, ; 165: System.Net.NetworkInformation.dll => 69
	i64 u0x4d3183dd245425d4, ; 166: System.Net.WebSockets.Client.dll => 80
	i64 u0x4d479f968a05e504, ; 167: System.Linq.Expressions.dll => 59
	i64 u0x4d55a010ffc4faff, ; 168: System.Private.Xml => 89
	i64 u0x4d5cbe77561c5b2e, ; 169: System.Web.dll => 154
	i64 u0x4d7793536e79c309, ; 170: System.ServiceProcess => 133
	i64 u0x4d95fccc1f67c7ca, ; 171: System.Runtime.Loader.dll => 110
	i64 u0x4e32f00cb0937401, ; 172: Mono.Android.Runtime => 171
	i64 u0x4e5eea4668ac2b18, ; 173: System.Text.Encoding.CodePages => 134
	i64 u0x4ebd0c4b82c5eefc, ; 174: lib_System.Threading.Channels.dll.so => 140
	i64 u0x4ee8eaa9c9c1151a, ; 175: System.Globalization.Calendars => 40
	i64 u0x50c3a29b21050d45, ; 176: System.Linq.Parallel.dll => 60
	i64 u0x516324a5050a7e3c, ; 177: System.Net.WebProxy => 79
	i64 u0x516d6f0b21a303de, ; 178: lib_System.Diagnostics.Contracts.dll.so => 25
	i64 u0x51bb8a2afe774e32, ; 179: System.Drawing => 36
	i64 u0x5247c5c32a4140f0, ; 180: System.Resources.Reader => 99
	i64 u0x526ce79eb8e90527, ; 181: lib_System.Net.Primitives.dll.so => 71
	i64 u0x52829f00b4467c38, ; 182: lib_System.Data.Common.dll.so => 22
	i64 u0x53978aac584c666e, ; 183: lib_System.Security.Cryptography.Cng.dll.so => 121
	i64 u0x53a96d5c86c9e194, ; 184: System.Net.NetworkInformation => 69
	i64 u0x53be1038a61e8d44, ; 185: System.Runtime.InteropServices.RuntimeInformation.dll => 107
	i64 u0x5435e6f049e9bc37, ; 186: System.Security.Claims.dll => 119
	i64 u0x54795225dd1587af, ; 187: lib_System.Runtime.dll.so => 117
	i64 u0x5588627c9a108ec9, ; 188: System.Collections.Specialized => 11
	i64 u0x55a898e4f42e3fae, ; 189: Microsoft.VisualBasic.Core.dll => 2
	i64 u0x55fa0c610fe93bb1, ; 190: lib_System.Security.Cryptography.OpenSsl.dll.so => 124
	i64 u0x56442b99bc64bb47, ; 191: System.Runtime.Serialization.Xml.dll => 115
	i64 u0x56a8b26e1aeae27b, ; 192: System.Threading.Tasks.Dataflow => 142
	i64 u0x56f932d61e93c07f, ; 193: System.Globalization.Extensions => 41
	i64 u0x571c5cfbec5ae8e2, ; 194: System.Private.Uri => 87
	i64 u0x579a06fed6eec900, ; 195: System.Private.CoreLib.dll => 173
	i64 u0x57c542c14049b66d, ; 196: System.Diagnostics.DiagnosticSource => 27
	i64 u0x581a8bd5cfda563e, ; 197: System.Threading.Timer => 148
	i64 u0x595a356d23e8da9a, ; 198: lib_Microsoft.CSharp.dll.so => 1
	i64 u0x5a745f5101a75527, ; 199: lib_System.IO.Compression.FileSystem.dll.so => 44
	i64 u0x5a8f6699f4a1caa9, ; 200: lib_System.Threading.dll.so => 149
	i64 u0x5ae9cd33b15841bf, ; 201: System.ComponentModel => 18
	i64 u0x5b54391bdc6fcfe6, ; 202: System.Private.DataContractSerialization => 86
	i64 u0x5b8109e8e14c5e3e, ; 203: System.Globalization.Extensions.dll => 41
	i64 u0x5c30a4a35f9cc8c4, ; 204: lib_System.Reflection.Extensions.dll.so => 94
	i64 u0x5c53c29f5073b0c9, ; 205: System.Diagnostics.FileVersionInfo => 28
	i64 u0x5c87463c575c7616, ; 206: lib_System.Globalization.Extensions.dll.so => 41
	i64 u0x5d0a4a29b02d9d3c, ; 207: System.Net.WebHeaderCollection.dll => 78
	i64 u0x5d7ec76c1c703055, ; 208: System.Threading.Tasks.Parallel => 144
	i64 u0x5db0cbbd1028510e, ; 209: lib_System.Runtime.InteropServices.dll.so => 108
	i64 u0x5e467bc8f09ad026, ; 210: System.Collections.Specialized.dll => 11
	i64 u0x5e5173b3208d97e7, ; 211: System.Runtime.Handles.dll => 105
	i64 u0x5ea92fdb19ec8c4c, ; 212: System.Text.Encodings.Web.dll => 137
	i64 u0x5eb8046dd40e9ac3, ; 213: System.ComponentModel.Primitives => 16
	i64 u0x5ec272d219c9aba4, ; 214: System.Security.Cryptography.Csp.dll => 122
	i64 u0x5eee1376d94c7f5e, ; 215: System.Net.HttpListener.dll => 66
	i64 u0x5f36ccf5c6a57e24, ; 216: System.Xml.ReaderWriter.dll => 157
	i64 u0x5f4294b9b63cb842, ; 217: System.Data.Common => 22
	i64 u0x5fac98e0b37a5b9d, ; 218: System.Runtime.CompilerServices.Unsafe.dll => 102
	i64 u0x60f62d786afcf130, ; 219: System.Memory => 63
	i64 u0x61bb78c89f867353, ; 220: System.IO => 58
	i64 u0x61d88f399afb2f45, ; 221: lib_System.Runtime.Loader.dll.so => 110
	i64 u0x622eef6f9e59068d, ; 222: System.Private.CoreLib => 173
	i64 u0x63cdbd66ac39bb46, ; 223: lib_Microsoft.VisualStudio.DesignTools.XamlTapContract.dll.so => 177
	i64 u0x63f1f6883c1e23c2, ; 224: lib_System.Collections.Immutable.dll.so => 9
	i64 u0x640e3b14dbd325c2, ; 225: System.Security.Cryptography.Algorithms.dll => 120
	i64 u0x64587004560099b9, ; 226: System.Reflection => 98
	i64 u0x64b1529a438a3c45, ; 227: lib_System.Runtime.Handles.dll.so => 105
	i64 u0x65ece51227bfa724, ; 228: lib_System.Runtime.Numerics.dll.so => 111
	i64 u0x6679b2337ee6b22a, ; 229: lib_System.IO.FileSystem.Primitives.dll.so => 49
	i64 u0x6692e924eade1b29, ; 230: lib_System.Console.dll.so => 20
	i64 u0x674303f65d8fad6f, ; 231: lib_System.Net.Quic.dll.so => 72
	i64 u0x67c0802770244408, ; 232: System.Windows.dll => 155
	i64 u0x68100b69286e27cd, ; 233: lib_System.Formats.Tar.dll.so => 39
	i64 u0x6872ec7a2e36b1ac, ; 234: System.Drawing.Primitives.dll => 35
	i64 u0x68fbbbe2eb455198, ; 235: System.Formats.Asn1 => 38
	i64 u0x6a4d7577b2317255, ; 236: System.Runtime.InteropServices.dll => 108
	i64 u0x6afcedb171067e2b, ; 237: System.Core.dll => 21
	i64 u0x6d70755158ca866e, ; 238: lib_System.ComponentModel.EventBasedAsync.dll.so => 15
	i64 u0x6d7eeca99577fc8b, ; 239: lib_System.Net.WebProxy.dll.so => 79
	i64 u0x6d8515b19946b6a2, ; 240: System.Net.WebProxy.dll => 79
	i64 u0x6e838d9a2a6f6c9e, ; 241: lib_System.ValueTuple.dll.so => 152
	i64 u0x6e9965ce1095e60a, ; 242: lib_System.Core.dll.so => 21
	i64 u0x6ffc4967cc47ba57, ; 243: System.IO.FileSystem.Watcher.dll => 50
	i64 u0x701cd46a1c25a5fe, ; 244: System.IO.FileSystem.dll => 51
	i64 u0x71485e7ffdb4b958, ; 245: System.Reflection.Extensions => 94
	i64 u0x71ad672adbe48f35, ; 246: System.ComponentModel.Primitives.dll => 16
	i64 u0x725f5a9e82a45c81, ; 247: System.Security.Cryptography.Encoding => 123
	i64 u0x72e0300099accce1, ; 248: System.Xml.XPath.XDocument => 160
	i64 u0x730bfb248998f67a, ; 249: System.IO.Compression.ZipFile => 45
	i64 u0x73a6be34e822f9d1, ; 250: lib_System.Runtime.Serialization.dll.so => 116
	i64 u0x73e4ce94e2eb6ffc, ; 251: lib_System.Memory.dll.so => 63
	i64 u0x743a1eccf080489a, ; 252: WindowsBase.dll => 166
	i64 u0x75c326eb821b85c4, ; 253: lib_System.ComponentModel.DataAnnotations.dll.so => 14
	i64 u0x76ca07b878f44da0, ; 254: System.Runtime.Numerics.dll => 111
	i64 u0x778a805e625329ef, ; 255: System.Linq.Parallel => 60
	i64 u0x77f8a4acc2fdc449, ; 256: System.Security.Cryptography.Cng.dll => 121
	i64 u0x782c5d8eb99ff201, ; 257: lib_Microsoft.VisualBasic.Core.dll.so => 2
	i64 u0x7a9a57d43b0845fa, ; 258: System.AppContext => 6
	i64 u0x7bef86a4335c4870, ; 259: System.ComponentModel.TypeConverter => 17
	i64 u0x7c41d387501568ba, ; 260: System.Net.WebClient.dll => 77
	i64 u0x7cd2ec8eaf5241cd, ; 261: System.Security.dll => 131
	i64 u0x7d8ee2bdc8e3aad1, ; 262: System.Numerics.Vectors => 83
	i64 u0x7dfc3d6d9d8d7b70, ; 263: System.Collections => 12
	i64 u0x7e2e564fa2f76c65, ; 264: lib_System.Diagnostics.Tracing.dll.so => 34
	i64 u0x7e302e110e1e1346, ; 265: lib_System.Security.Claims.dll.so => 119
	i64 u0x7e946809d6008ef2, ; 266: lib_System.ObjectModel.dll.so => 85
	i64 u0x7ecc13347c8fd849, ; 267: lib_System.ComponentModel.dll.so => 18
	i64 u0x8076a9a44a2ca331, ; 268: System.Net.Quic => 72
	i64 u0x80b7e726b0280681, ; 269: Microsoft.VisualStudio.DesignTools.MobileTapContracts => 175
	i64 u0x80da183a87731838, ; 270: System.Reflection.Metadata => 95
	i64 u0x812c069d5cdecc17, ; 271: System.dll => 165
	i64 u0x81657cec2b31e8aa, ; 272: System.Net => 82
	i64 u0x82b399cb01b531c4, ; 273: lib_System.Web.dll.so => 154
	i64 u0x82df8f5532a10c59, ; 274: lib_System.Drawing.dll.so => 36
	i64 u0x82f0b6e911d13535, ; 275: lib_System.Transactions.dll.so => 151
	i64 u0x846ce984efea52c7, ; 276: System.Threading.Tasks.Parallel.dll => 144
	i64 u0x84ae73148a4557d2, ; 277: lib_System.IO.Pipes.dll.so => 56
	i64 u0x84b01102c12a9232, ; 278: System.Runtime.Serialization.Json.dll => 113
	i64 u0x8662aaeb94fef37f, ; 279: lib_System.Dynamic.Runtime.dll.so => 37
	i64 u0x86b62cb077ec4fd7, ; 280: System.Runtime.Serialization.Xml => 115
	i64 u0x872a5b14c18d328c, ; 281: System.ComponentModel.DataAnnotations => 14
	i64 u0x87c69b87d9283884, ; 282: lib_System.Threading.Thread.dll.so => 146
	i64 u0x87f6569b25707834, ; 283: System.IO.Compression.Brotli.dll => 43
	i64 u0x88ba6bc4f7762b03, ; 284: lib_System.Reflection.dll.so => 98
	i64 u0x8930322c7bd8f768, ; 285: netstandard => 168
	i64 u0x897a606c9e39c75f, ; 286: lib_System.ComponentModel.Primitives.dll.so => 16
	i64 u0x89911a22005b92b7, ; 287: System.IO.FileSystem.DriveInfo.dll => 48
	i64 u0x89c5188089ec2cd5, ; 288: lib_System.Runtime.InteropServices.RuntimeInformation.dll.so => 107
	i64 u0x8a19e3dc71b34b2c, ; 289: System.Reflection.TypeExtensions.dll => 97
	i64 u0x8b4ff5d0fdd5faa1, ; 290: lib_System.Diagnostics.DiagnosticSource.dll.so => 27
	i64 u0x8b541d476eb3774c, ; 291: System.Security.Principal.Windows => 128
	i64 u0x8b8d01333a96d0b5, ; 292: System.Diagnostics.Process.dll => 29
	i64 u0x8cdfdb4ce85fb925, ; 293: lib_System.Security.Principal.Windows.dll.so => 128
	i64 u0x8cdfe7b8f4caa426, ; 294: System.IO.Compression.FileSystem => 44
	i64 u0x8d7b8ab4b3310ead, ; 295: System.Threading => 149
	i64 u0x8da188285aadfe8e, ; 296: System.Collections.Concurrent => 8
	i64 u0x8f44b45eb046bbd1, ; 297: System.ServiceModel.Web.dll => 132
	i64 u0x8fbf5b0114c6dcef, ; 298: System.Globalization.dll => 42
	i64 u0x90263f8448b8f572, ; 299: lib_System.Diagnostics.TraceSource.dll.so => 33
	i64 u0x903101b46fb73a04, ; 300: _Microsoft.Android.Resource.Designer => 178
	i64 u0x90393bd4865292f3, ; 301: lib_System.IO.Compression.dll.so => 46
	i64 u0x905e2b8e7ae91ae6, ; 302: System.Threading.Tasks.Extensions.dll => 143
	i64 u0x9157bd523cd7ed36, ; 303: lib_System.Text.Json.dll.so => 138
	i64 u0x91a74f07b30d37e2, ; 304: System.Linq.dll => 62
	i64 u0x91cb86ea3b17111d, ; 305: System.ServiceModel.Web => 132
	i64 u0x92054e486c0c7ea7, ; 306: System.IO.FileSystem.DriveInfo => 48
	i64 u0x928614058c40c4cd, ; 307: lib_System.Xml.XPath.XDocument.dll.so => 160
	i64 u0x93c3f1cec5aff7ad, ; 308: lib_药材市场中药饮片图鉴.dll.so => 0
	i64 u0x944077d8ca3c6580, ; 309: System.IO.Compression.dll => 46
	i64 u0x948cffedc8ed7960, ; 310: System.Xml => 164
	i64 u0x97b8c771ea3e4220, ; 311: System.ComponentModel.dll => 18
	i64 u0x97e144c9d3c6976e, ; 312: System.Collections.Concurrent.dll => 8
	i64 u0x98d720cc4597562c, ; 313: System.Security.Cryptography.OpenSsl => 124
	i64 u0x991d510397f92d9d, ; 314: System.Linq.Expressions => 59
	i64 u0x996ceeb8a3da3d67, ; 315: System.Threading.Overlapped.dll => 141
	i64 u0x9b211a749105beac, ; 316: System.Transactions.Local => 150
	i64 u0x9b8734714671022d, ; 317: System.Threading.Tasks.Dataflow.dll => 142
	i64 u0x9c244ac7cda32d26, ; 318: System.Security.Cryptography.X509Certificates.dll => 126
	i64 u0x9c8f6872beab6408, ; 319: System.Xml.XPath.XDocument.dll => 160
	i64 u0x9ce01cf91101ae23, ; 320: System.Xml.XmlDocument => 162
	i64 u0x9e4b95dec42769f7, ; 321: System.Diagnostics.Debug.dll => 26
	i64 u0xa00832eb975f56a8, ; 322: lib_System.Net.dll.so => 82
	i64 u0xa0d8259f4cc284ec, ; 323: lib_System.Security.Cryptography.dll.so => 127
	i64 u0xa0ff9b3e34d92f11, ; 324: lib_System.Resources.Writer.dll.so => 101
	i64 u0xa12fbfb4da97d9f3, ; 325: System.Threading.Timer.dll => 148
	i64 u0xa2572680829d2c7c, ; 326: System.IO.Pipelines.dll => 54
	i64 u0xa26597e57ee9c7f6, ; 327: System.Xml.XmlDocument.dll => 162
	i64 u0xa308401900e5bed3, ; 328: lib_mscorlib.dll.so => 167
	i64 u0xa395572e7da6c99d, ; 329: lib_System.Security.dll.so => 131
	i64 u0xa3e683f24b43af6f, ; 330: System.Dynamic.Runtime.dll => 37
	i64 u0xa4edc8f2ceae241a, ; 331: System.Data.Common.dll => 22
	i64 u0xa5494f40f128ce6a, ; 332: System.Runtime.Serialization.Formatters.dll => 112
	i64 u0xa54b74df83dce92b, ; 333: System.Reflection.DispatchProxy => 90
	i64 u0xa5b7152421ed6d98, ; 334: lib_System.IO.FileSystem.Watcher.dll.so => 50
	i64 u0xa5c3844f17b822db, ; 335: lib_System.Linq.Parallel.dll.so => 60
	i64 u0xa5ce5c755bde8cb8, ; 336: lib_System.Security.Cryptography.Csp.dll.so => 122
	i64 u0xa5e599d1e0524750, ; 337: System.Numerics.Vectors.dll => 83
	i64 u0xa5f1ba49b85dd355, ; 338: System.Security.Cryptography.dll => 127
	i64 u0xa61975a5a37873ea, ; 339: lib_System.Xml.XmlSerializer.dll.so => 163
	i64 u0xa66cbee0130865f7, ; 340: lib_WindowsBase.dll.so => 166
	i64 u0xa763fbb98df8d9fb, ; 341: lib_Microsoft.Win32.Primitives.dll.so => 4
	i64 u0xa7eab29ed44b4e7a, ; 342: Mono.Android.Export => 170
	i64 u0xa8195217cbf017b7, ; 343: Microsoft.VisualBasic.Core => 2
	i64 u0xa8b52f21e0dbe690, ; 344: System.Runtime.Serialization.dll => 116
	i64 u0xa8c84ce526c2b4bd, ; 345: Microsoft.VisualStudio.DesignTools.XamlTapContract.dll => 177
	i64 u0xa95590e7c57438a4, ; 346: System.Configuration => 19
	i64 u0xaa443ac34067eeef, ; 347: System.Private.Xml.dll => 89
	i64 u0xaa52de307ef5d1dd, ; 348: System.Net.Http => 65
	i64 u0xaa9a7b0214a5cc5c, ; 349: System.Diagnostics.StackTrace.dll => 30
	i64 u0xab9c1b2687d86b0b, ; 350: lib_System.Linq.Expressions.dll.so => 59
	i64 u0xac2af3fa195a15ce, ; 351: System.Runtime.Numerics => 111
	i64 u0xac5acae88f60357e, ; 352: System.Diagnostics.Tools.dll => 32
	i64 u0xac79c7e46047ad98, ; 353: System.Security.Principal.Windows.dll => 128
	i64 u0xac98d31068e24591, ; 354: System.Xml.XDocument => 159
	i64 u0xacf42eea7ef9cd12, ; 355: System.Threading.Channels => 140
	i64 u0xadbb53caf78a79d2, ; 356: System.Web.HttpUtility => 153
	i64 u0xadc90ab061a9e6e4, ; 357: System.ComponentModel.TypeConverter.dll => 17
	i64 u0xadf4cf30debbeb9a, ; 358: System.Net.ServicePoint.dll => 75
	i64 u0xadf511667bef3595, ; 359: System.Net.Security => 74
	i64 u0xae0aaa94fdcfce0f, ; 360: System.ComponentModel.EventBasedAsync.dll => 15
	i64 u0xae282bcd03739de7, ; 361: Java.Interop => 169
	i64 u0xae53579c90db1107, ; 362: System.ObjectModel.dll => 85
	i64 u0xaf732d0b2193b8f5, ; 363: System.Security.Cryptography.OpenSsl.dll => 124
	i64 u0xb0bb43dc52ea59f9, ; 364: System.Diagnostics.Tracing.dll => 34
	i64 u0xb1dd05401aa8ee63, ; 365: System.Security.AccessControl => 118
	i64 u0xb220631954820169, ; 366: System.Text.RegularExpressions => 139
	i64 u0xb2376e1dbf8b4ed7, ; 367: System.Security.Cryptography.Csp => 122
	i64 u0xb2a1959fe95c5402, ; 368: lib_System.Runtime.InteropServices.JavaScript.dll.so => 106
	i64 u0xb3011a0a57f7ffb2, ; 369: Microsoft.VisualStudio.DesignTools.MobileTapContracts.dll => 175
	i64 u0xb4bd7015ecee9d86, ; 370: System.IO.Pipelines => 54
	i64 u0xb4c53d9749c5f226, ; 371: lib_System.IO.FileSystem.AccessControl.dll.so => 47
	i64 u0xb4ff710863453fda, ; 372: System.Diagnostics.FileVersionInfo.dll => 28
	i64 u0xb5c38bf497a4cfe2, ; 373: lib_System.Threading.Tasks.dll.so => 145
	i64 u0xb5ea31d5244c6626, ; 374: System.Threading.ThreadPool.dll => 147
	i64 u0xb7212c4683a94afe, ; 375: System.Drawing.Primitives => 35
	i64 u0xb81a2c6e0aee50fe, ; 376: lib_System.Private.CoreLib.dll.so => 173
	i64 u0xb8c60af47c08d4da, ; 377: System.Net.ServicePoint => 75
	i64 u0xb8e68d20aad91196, ; 378: lib_System.Xml.XPath.dll.so => 161
	i64 u0xb9185c33a1643eed, ; 379: Microsoft.CSharp.dll => 1
	i64 u0xba4670aa94a2b3c6, ; 380: lib_System.Xml.XDocument.dll.so => 159
	i64 u0xba48785529705af9, ; 381: System.Collections.dll => 12
	i64 u0xba965b8c86359996, ; 382: lib_System.Windows.dll.so => 155
	i64 u0xbb286883bc35db36, ; 383: System.Transactions.dll => 151
	i64 u0xbb65706fde942ce3, ; 384: System.Net.Sockets => 76
	i64 u0xbba28979413cad9e, ; 385: lib_System.Runtime.CompilerServices.VisualC.dll.so => 103
	i64 u0xbbd180354b67271a, ; 386: System.Runtime.Serialization.Formatters => 112
	i64 u0xbd0e2c0d55246576, ; 387: System.Net.Http.dll => 65
	i64 u0xbd3fbd85b9e1cb29, ; 388: lib_System.Net.HttpListener.dll.so => 66
	i64 u0xbd4f572d2bd0a789, ; 389: System.IO.Compression.ZipFile.dll => 45
	i64 u0xbd877b14d0b56392, ; 390: System.Runtime.Intrinsics.dll => 109
	i64 u0xbe65a49036345cf4, ; 391: lib_System.Buffers.dll.so => 7
	i64 u0xbef9919db45b4ca7, ; 392: System.IO.Pipes.AccessControl => 55
	i64 u0xbfc1e1fb3095f2b3, ; 393: lib_System.Net.Http.Json.dll.so => 64
	i64 u0xc0d928351ab5ca77, ; 394: System.Console.dll => 20
	i64 u0xc0f5a221a9383aea, ; 395: System.Runtime.Intrinsics => 109
	i64 u0xc111030af54d7191, ; 396: System.Resources.Writer => 101
	i64 u0xc12b8b3afa48329c, ; 397: lib_System.Linq.dll.so => 62
	i64 u0xc183ca0b74453aa9, ; 398: lib_System.Threading.Tasks.Dataflow.dll.so => 142
	i64 u0xc26c064effb1dea9, ; 399: System.Buffers.dll => 7
	i64 u0xc2902f6cf5452577, ; 400: lib_Mono.Android.Export.dll.so => 170
	i64 u0xc2a3bca55b573141, ; 401: System.IO.FileSystem.Watcher => 50
	i64 u0xc30b52815b58ac2c, ; 402: lib_System.Runtime.Serialization.Xml.dll.so => 115
	i64 u0xc36d7d89c652f455, ; 403: System.Threading.Overlapped => 141
	i64 u0xc3c86c1e5e12f03d, ; 404: WindowsBase => 166
	i64 u0xc421b61fd853169d, ; 405: lib_System.Net.WebSockets.Client.dll.so => 80
	i64 u0xc463e077917aa21d, ; 406: System.Runtime.Serialization.Json => 113
	i64 u0xc50fded0ded1418c, ; 407: lib_System.ComponentModel.TypeConverter.dll.so => 17
	i64 u0xc519125d6bc8fb11, ; 408: lib_System.Net.Requests.dll.so => 73
	i64 u0xc5325b2fcb37446f, ; 409: lib_System.Private.Xml.dll.so => 89
	i64 u0xc5a0f4b95a699af7, ; 410: lib_System.Private.Uri.dll.so => 87
	i64 u0xc5cdcd5b6277579e, ; 411: lib_System.Security.Cryptography.Algorithms.dll.so => 120
	i64 u0xc7c01e7d7c93a110, ; 412: System.Text.Encoding.Extensions.dll => 135
	i64 u0xc7ce851898a4548e, ; 413: lib_System.Web.HttpUtility.dll.so => 153
	i64 u0xc809d4089d2556b2, ; 414: System.Runtime.InteropServices.JavaScript.dll => 106
	i64 u0xc858a28d9ee5a6c5, ; 415: lib_System.Collections.Specialized.dll.so => 11
	i64 u0xc8ac7c6bf1c2ec51, ; 416: System.Reflection.DispatchProxy.dll => 90
	i64 u0xc9c62c8f354ac568, ; 417: lib_System.Diagnostics.TextWriterTraceListener.dll.so => 31
	i64 u0xca5801070d9fccfb, ; 418: System.Text.Encoding => 136
	i64 u0xcbb5f80c7293e696, ; 419: lib_System.Globalization.Calendars.dll.so => 40
	i64 u0xcbd4fdd9cef4a294, ; 420: lib__Microsoft.Android.Resource.Designer.dll.so => 178
	i64 u0xcc2876b32ef2794c, ; 421: lib_System.Text.RegularExpressions.dll.so => 139
	i64 u0xcc9fa2923aa1c9ef, ; 422: System.Diagnostics.Contracts.dll => 25
	i64 u0xcd10a42808629144, ; 423: System.Net.Requests => 73
	i64 u0xcde1fa22dc303670, ; 424: Microsoft.VisualStudio.DesignTools.XamlTapContract => 177
	i64 u0xcf23d8093f3ceadf, ; 425: System.Diagnostics.DiagnosticSource.dll => 27
	i64 u0xcf5ff6b6b2c4c382, ; 426: System.Net.Mail.dll => 67
	i64 u0xcf8fc898f98b0d34, ; 427: System.Private.Xml.Linq => 88
	i64 u0xd04b5f59ed596e31, ; 428: System.Reflection.Metadata.dll => 95
	i64 u0xd063299fcfc0c93f, ; 429: lib_System.Runtime.Serialization.Json.dll.so => 113
	i64 u0xd0de8a113e976700, ; 430: System.Diagnostics.TextWriterTraceListener => 31
	i64 u0xd0fc33d5ae5d4cb8, ; 431: System.Runtime.Extensions => 104
	i64 u0xd12beacdfc14f696, ; 432: System.Dynamic.Runtime => 37
	i64 u0xd198e7ce1b6a8344, ; 433: System.Net.Quic.dll => 72
	i64 u0xd333d0af9e423810, ; 434: System.Runtime.InteropServices => 108
	i64 u0xd33a415cb4278969, ; 435: System.Security.Cryptography.Encoding.dll => 123
	i64 u0xd3651b6fc3125825, ; 436: System.Private.Uri.dll => 87
	i64 u0xd3801faafafb7698, ; 437: System.Private.DataContractSerialization.dll => 86
	i64 u0xd3edcc1f25459a50, ; 438: System.Reflection.Emit => 93
	i64 u0xd4fa0abb79079ea9, ; 439: System.Security.Principal.dll => 129
	i64 u0xd65786d27a4ad960, ; 440: lib_Microsoft.Maui.Controls.HotReload.Forms.dll.so => 174
	i64 u0xd72c760af136e863, ; 441: System.Xml.XmlSerializer.dll => 163
	i64 u0xd753f071e44c2a03, ; 442: lib_System.Security.SecureString.dll.so => 130
	i64 u0xdad05a11827959a3, ; 443: System.Collections.NonGeneric.dll => 10
	i64 u0xdaefdfe71aa53cf9, ; 444: System.IO.FileSystem.Primitives => 49
	i64 u0xdb58816721c02a59, ; 445: lib_System.Reflection.Emit.ILGeneration.dll.so => 91
	i64 u0xdbf2a779fbc3ac31, ; 446: System.Transactions.Local.dll => 150
	i64 u0xdbf9607a441b4505, ; 447: System.Linq => 62
	i64 u0xdbfc90157a0de9b0, ; 448: lib_System.Text.Encoding.dll.so => 136
	i64 u0xdc75032002d1a212, ; 449: lib_System.Transactions.Local.dll.so => 150
	i64 u0xdca8be7403f92d4f, ; 450: lib_System.Linq.Queryable.dll.so => 61
	i64 u0xdd2b722d78ef5f43, ; 451: System.Runtime.dll => 117
	i64 u0xdd67031857c72f96, ; 452: lib_System.Text.Encodings.Web.dll.so => 137
	i64 u0xdd92e229ad292030, ; 453: System.Numerics.dll => 84
	i64 u0xde110ae80fa7c2e2, ; 454: System.Xml.XDocument.dll => 159
	i64 u0xde572c2b2fb32f93, ; 455: lib_System.Threading.Tasks.Extensions.dll.so => 143
	i64 u0xdf4b773de8fb1540, ; 456: System.Net.dll => 82
	i64 u0xdfa254ebb4346068, ; 457: System.Net.Ping => 70
	i64 u0xe021eaa401792a05, ; 458: System.Text.Encoding.dll => 136
	i64 u0xe10b760bb1462e7a, ; 459: lib_System.Security.Cryptography.Primitives.dll.so => 125
	i64 u0xe1566bbdb759c5af, ; 460: Microsoft.Maui.Controls.HotReload.Forms.dll => 174
	i64 u0xe192a588d4410686, ; 461: lib_System.IO.Pipelines.dll.so => 54
	i64 u0xe1a08bd3fa539e0d, ; 462: System.Runtime.Loader => 110
	i64 u0xe1a77eb8831f7741, ; 463: System.Security.SecureString.dll => 130
	i64 u0xe1b52f9f816c70ef, ; 464: System.Private.Xml.Linq.dll => 88
	i64 u0xe1e199c8ab02e356, ; 465: System.Data.DataSetExtensions.dll => 23
	i64 u0xe1ecfdb7fff86067, ; 466: System.Net.Security.dll => 74
	i64 u0xe2252a80fe853de4, ; 467: lib_System.Security.Principal.dll.so => 129
	i64 u0xe22fa4c9c645db62, ; 468: System.Diagnostics.TextWriterTraceListener.dll => 31
	i64 u0xe2420585aeceb728, ; 469: System.Net.Requests.dll => 73
	i64 u0xe2ad448dee50fbdf, ; 470: System.Xml.Serialization => 158
	i64 u0xe2d920f978f5d85c, ; 471: System.Data.DataSetExtensions => 23
	i64 u0xe2e426c7714fa0bc, ; 472: Microsoft.Win32.Primitives.dll => 4
	i64 u0xe332bacb3eb4a806, ; 473: Mono.Android.Export.dll => 170
	i64 u0xe3b7cbae5ad66c75, ; 474: lib_System.Security.Cryptography.Encoding.dll.so => 123
	i64 u0xe4f74a0b5bf9703f, ; 475: System.Runtime.Serialization.Primitives => 114
	i64 u0xe5434e8a119ceb69, ; 476: lib_Mono.Android.dll.so => 172
	i64 u0xe55703b9ce5c038a, ; 477: System.Diagnostics.Tools => 32
	i64 u0xe57013c8afc270b5, ; 478: Microsoft.VisualBasic => 3
	i64 u0xe62913cc36bc07ec, ; 479: System.Xml.dll => 164
	i64 u0xe7e03cc18dcdeb49, ; 480: lib_System.Diagnostics.StackTrace.dll.so => 30
	i64 u0xe7e147ff99a7a380, ; 481: lib_System.Configuration.dll.so => 19
	i64 u0xe896622fe0902957, ; 482: System.Reflection.Emit.dll => 93
	i64 u0xe89a2a9ef110899b, ; 483: System.Drawing.dll => 36
	i64 u0xe8c5f8c100b5934b, ; 484: Microsoft.Win32.Registry => 5
	i64 u0xe9b9c8c0458fd92a, ; 485: System.Windows => 155
	i64 u0xed60c6fa891c051a, ; 486: lib_Microsoft.VisualStudio.DesignTools.TapContract.dll.so => 176
	i64 u0xedc4817167106c23, ; 487: System.Net.Sockets.dll => 76
	i64 u0xedc632067fb20ff3, ; 488: System.Memory.dll => 63
	i64 u0xee81f5b3f1c4f83b, ; 489: System.Threading.ThreadPool => 147
	i64 u0xeefc635595ef57f0, ; 490: System.Security.Cryptography.Cng => 121
	i64 u0xef03b1b5a04e9709, ; 491: System.Text.Encoding.CodePages.dll => 134
	i64 u0xefd1e0c4e5c9b371, ; 492: System.Resources.ResourceManager.dll => 100
	i64 u0xefe8f8d5ed3c72ea, ; 493: System.Formats.Tar.dll => 39
	i64 u0xf09e47b6ae914f6e, ; 494: System.Net.NameResolution => 68
	i64 u0xf0ac2b489fed2e35, ; 495: lib_System.Diagnostics.Debug.dll.so => 26
	i64 u0xf0bb49dadd3a1fe1, ; 496: lib_System.Net.ServicePoint.dll.so => 75
	i64 u0xf0de2537ee19c6ca, ; 497: lib_System.Net.WebHeaderCollection.dll.so => 78
	i64 u0xf161f4f3c3b7e62c, ; 498: System.Data => 24
	i64 u0xf16eb650d5a464bc, ; 499: System.ValueTuple => 152
	i64 u0xf1c4b4005493d871, ; 500: System.Formats.Asn1.dll => 38
	i64 u0xf300e085f8acd238, ; 501: lib_System.ServiceProcess.dll.so => 133
	i64 u0xf34e52b26e7e059d, ; 502: System.Runtime.CompilerServices.VisualC.dll => 103
	i64 u0xf3ad9b8fb3eefd12, ; 503: lib_System.IO.UnmanagedMemoryStream.dll.so => 57
	i64 u0xf3ddfe05336abf29, ; 504: System => 165
	i64 u0xf408654b2a135055, ; 505: System.Reflection.Emit.ILGeneration.dll => 91
	i64 u0xf4103170a1de5bd0, ; 506: System.Linq.Queryable.dll => 61
	i64 u0xf42d20c23173d77c, ; 507: lib_System.ServiceModel.Web.dll.so => 132
	i64 u0xf4c1dd70a5496a17, ; 508: System.IO.Compression => 46
	i64 u0xf4ecf4b9afc64781, ; 509: System.ServiceProcess.dll => 133
	i64 u0xf518f63ead11fcd1, ; 510: System.Threading.Tasks => 145
	i64 u0xf5fc7602fe27b333, ; 511: System.Net.WebHeaderCollection => 78
	i64 u0xf70c0a7bf8ccf5af, ; 512: System.Web => 154
	i64 u0xf7e2cac4c45067b3, ; 513: lib_System.Numerics.Vectors.dll.so => 83
	i64 u0xf8aac5ea82de1348, ; 514: System.Linq.Queryable => 61
	i64 u0xf8b77539b362d3ba, ; 515: lib_System.Reflection.Primitives.dll.so => 96
	i64 u0xf915dc29808193a1, ; 516: System.Web.HttpUtility.dll => 153
	i64 u0xf9be54c8bcf8ff3b, ; 517: System.Security.AccessControl.dll => 118
	i64 u0xfa0e82300e67f913, ; 518: lib_System.AppContext.dll.so => 6
	i64 u0xfa2fdb27e8a2c8e8, ; 519: System.ComponentModel.EventBasedAsync => 15
	i64 u0xfa3f278f288b0e84, ; 520: lib_System.Net.Security.dll.so => 74
	i64 u0xfa645d91e9fc4cba, ; 521: System.Threading.Thread => 146
	i64 u0xfad4d2c770e827f9, ; 522: lib_System.IO.IsolatedStorage.dll.so => 52
	i64 u0xfb06dd2338e6f7c4, ; 523: System.Net.Ping.dll => 70
	i64 u0xfb087abe5365e3b7, ; 524: lib_System.Data.DataSetExtensions.dll.so => 23
	i64 u0xfb846e949baff5ea, ; 525: System.Xml.Serialization.dll => 158
	i64 u0xfbad3e4ce4b98145, ; 526: System.Security.Cryptography.X509Certificates => 126
	i64 u0xfbf0a31c9fc34bc4, ; 527: lib_System.Net.Http.dll.so => 65
	i64 u0xfc6b7527cc280b3f, ; 528: lib_System.Runtime.Serialization.Formatters.dll.so => 112
	i64 u0xfc93fc307d279893, ; 529: System.IO.Pipes.AccessControl.dll => 55
	i64 u0xfcd302092ada6328, ; 530: System.IO.MemoryMappedFiles.dll => 53
	i64 u0xfd49b3c1a76e2748, ; 531: System.Runtime.InteropServices.RuntimeInformation => 107
	i64 u0xfd536c702f64dc47, ; 532: System.Text.Encoding.Extensions => 135
	i64 u0xfda36abccf05cf5c, ; 533: System.Net.WebSockets.Client => 80
	i64 u0xff270a55858bac8d, ; 534: System.Security.Principal => 129
	i64 u0xff9b54613e0d2cc8, ; 535: System.Net.Http.Json => 64
	i64 u0xffdb7a971be4ec73 ; 536: System.ValueTuple.dll => 152
], align 16

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [537 x i32] [
	i32 42, i32 13, i32 105, i32 171, i32 48, i32 7, i32 86, i32 71,
	i32 12, i32 102, i32 156, i32 19, i32 161, i32 167, i32 10, i32 96,
	i32 13, i32 10, i32 127, i32 95, i32 140, i32 39, i32 172, i32 5,
	i32 67, i32 130, i32 68, i32 66, i32 57, i32 52, i32 43, i32 125,
	i32 67, i32 81, i32 176, i32 158, i32 92, i32 99, i32 141, i32 151,
	i32 0, i32 162, i32 169, i32 81, i32 176, i32 4, i32 5, i32 51,
	i32 101, i32 56, i32 120, i32 98, i32 168, i32 118, i32 21, i32 137,
	i32 97, i32 77, i32 119, i32 0, i32 8, i32 165, i32 70, i32 171,
	i32 145, i32 40, i32 47, i32 30, i32 144, i32 163, i32 28, i32 84,
	i32 77, i32 43, i32 29, i32 42, i32 103, i32 117, i32 45, i32 91,
	i32 56, i32 148, i32 175, i32 146, i32 100, i32 49, i32 20, i32 114,
	i32 94, i32 58, i32 81, i32 169, i32 26, i32 71, i32 174, i32 69,
	i32 33, i32 14, i32 139, i32 38, i32 134, i32 92, i32 88, i32 149,
	i32 24, i32 138, i32 57, i32 51, i32 29, i32 157, i32 34, i32 164,
	i32 52, i32 178, i32 90, i32 35, i32 157, i32 9, i32 76, i32 55,
	i32 13, i32 109, i32 32, i32 104, i32 84, i32 92, i32 53, i32 96,
	i32 58, i32 9, i32 102, i32 68, i32 125, i32 116, i32 135, i32 126,
	i32 106, i32 131, i32 147, i32 156, i32 97, i32 24, i32 143, i32 3,
	i32 167, i32 100, i32 161, i32 99, i32 25, i32 93, i32 168, i32 172,
	i32 3, i32 1, i32 114, i32 33, i32 6, i32 156, i32 53, i32 85,
	i32 44, i32 104, i32 47, i32 138, i32 64, i32 69, i32 80, i32 59,
	i32 89, i32 154, i32 133, i32 110, i32 171, i32 134, i32 140, i32 40,
	i32 60, i32 79, i32 25, i32 36, i32 99, i32 71, i32 22, i32 121,
	i32 69, i32 107, i32 119, i32 117, i32 11, i32 2, i32 124, i32 115,
	i32 142, i32 41, i32 87, i32 173, i32 27, i32 148, i32 1, i32 44,
	i32 149, i32 18, i32 86, i32 41, i32 94, i32 28, i32 41, i32 78,
	i32 144, i32 108, i32 11, i32 105, i32 137, i32 16, i32 122, i32 66,
	i32 157, i32 22, i32 102, i32 63, i32 58, i32 110, i32 173, i32 177,
	i32 9, i32 120, i32 98, i32 105, i32 111, i32 49, i32 20, i32 72,
	i32 155, i32 39, i32 35, i32 38, i32 108, i32 21, i32 15, i32 79,
	i32 79, i32 152, i32 21, i32 50, i32 51, i32 94, i32 16, i32 123,
	i32 160, i32 45, i32 116, i32 63, i32 166, i32 14, i32 111, i32 60,
	i32 121, i32 2, i32 6, i32 17, i32 77, i32 131, i32 83, i32 12,
	i32 34, i32 119, i32 85, i32 18, i32 72, i32 175, i32 95, i32 165,
	i32 82, i32 154, i32 36, i32 151, i32 144, i32 56, i32 113, i32 37,
	i32 115, i32 14, i32 146, i32 43, i32 98, i32 168, i32 16, i32 48,
	i32 107, i32 97, i32 27, i32 128, i32 29, i32 128, i32 44, i32 149,
	i32 8, i32 132, i32 42, i32 33, i32 178, i32 46, i32 143, i32 138,
	i32 62, i32 132, i32 48, i32 160, i32 0, i32 46, i32 164, i32 18,
	i32 8, i32 124, i32 59, i32 141, i32 150, i32 142, i32 126, i32 160,
	i32 162, i32 26, i32 82, i32 127, i32 101, i32 148, i32 54, i32 162,
	i32 167, i32 131, i32 37, i32 22, i32 112, i32 90, i32 50, i32 60,
	i32 122, i32 83, i32 127, i32 163, i32 166, i32 4, i32 170, i32 2,
	i32 116, i32 177, i32 19, i32 89, i32 65, i32 30, i32 59, i32 111,
	i32 32, i32 128, i32 159, i32 140, i32 153, i32 17, i32 75, i32 74,
	i32 15, i32 169, i32 85, i32 124, i32 34, i32 118, i32 139, i32 122,
	i32 106, i32 175, i32 54, i32 47, i32 28, i32 145, i32 147, i32 35,
	i32 173, i32 75, i32 161, i32 1, i32 159, i32 12, i32 155, i32 151,
	i32 76, i32 103, i32 112, i32 65, i32 66, i32 45, i32 109, i32 7,
	i32 55, i32 64, i32 20, i32 109, i32 101, i32 62, i32 142, i32 7,
	i32 170, i32 50, i32 115, i32 141, i32 166, i32 80, i32 113, i32 17,
	i32 73, i32 89, i32 87, i32 120, i32 135, i32 153, i32 106, i32 11,
	i32 90, i32 31, i32 136, i32 40, i32 178, i32 139, i32 25, i32 73,
	i32 177, i32 27, i32 67, i32 88, i32 95, i32 113, i32 31, i32 104,
	i32 37, i32 72, i32 108, i32 123, i32 87, i32 86, i32 93, i32 129,
	i32 174, i32 163, i32 130, i32 10, i32 49, i32 91, i32 150, i32 62,
	i32 136, i32 150, i32 61, i32 117, i32 137, i32 84, i32 159, i32 143,
	i32 82, i32 70, i32 136, i32 125, i32 174, i32 54, i32 110, i32 130,
	i32 88, i32 23, i32 74, i32 129, i32 31, i32 73, i32 158, i32 23,
	i32 4, i32 170, i32 123, i32 114, i32 172, i32 32, i32 3, i32 164,
	i32 30, i32 19, i32 93, i32 36, i32 5, i32 155, i32 176, i32 76,
	i32 63, i32 147, i32 121, i32 134, i32 100, i32 39, i32 68, i32 26,
	i32 75, i32 78, i32 24, i32 152, i32 38, i32 133, i32 103, i32 57,
	i32 165, i32 91, i32 61, i32 132, i32 46, i32 133, i32 145, i32 78,
	i32 154, i32 83, i32 61, i32 96, i32 153, i32 118, i32 6, i32 15,
	i32 74, i32 146, i32 52, i32 70, i32 23, i32 158, i32 126, i32 65,
	i32 112, i32 55, i32 53, i32 107, i32 135, i32 80, i32 129, i32 64,
	i32 152
], align 16

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 u0x0000000000000000, ; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 16

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!".NET for Android remotes/origin/release/9.0.1xx @ 1719a35b8a0348a4a8dd0061cfc4dd7fe6612a3c"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
