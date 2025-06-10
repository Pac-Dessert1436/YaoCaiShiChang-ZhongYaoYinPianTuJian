; ModuleID = 'typemaps.arm64-v8a.ll'
source_filename = "typemaps.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android21"

%struct.TypeMapJava = type {
	i32, ; uint32_t module_index
	i32, ; uint32_t type_token_id
	i32 ; uint32_t java_name_index
}

%struct.TypeMapModule = type {
	[16 x i8], ; uint8_t module_uuid[16]
	i32, ; uint32_t entry_count
	i32, ; uint32_t duplicate_count
	ptr, ; TypeMapModuleEntry map
	ptr, ; TypeMapModuleEntry duplicate_map
	ptr, ; char* assembly_name
	ptr, ; MonoImage image
	i32, ; uint32_t java_name_width
	ptr ; uint8_t java_map
}

%struct.TypeMapModuleEntry = type {
	i32, ; uint32_t type_token_id
	i32 ; uint32_t java_map_index
}

@map_module_count = dso_local local_unnamed_addr constant i32 2, align 4

@java_type_count = dso_local local_unnamed_addr constant i32 47, align 4

; Managed modules map
@map_modules = dso_local local_unnamed_addr global [2 x %struct.TypeMapModule] [
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x9b, i8 u0x06, i8 u0x81, i8 u0x03, i8 u0xff, i8 u0x49, i8 u0x0f, i8 u0x46, i8 u0x94, i8 u0x40, i8 u0xb8, i8 u0x94, i8 u0xa2, i8 u0xef, i8 u0x45, i8 u0x9b ], ; module_uuid: 0381069b-49ff-460f-9440-b894a2ef459b
		i32 1, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module0_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.0_assembly_name, ; assembly_name: 药材市场中药饮片图鉴
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 0
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xb7, i8 u0x7c, i8 u0x8b, i8 u0x9f, i8 u0xf7, i8 u0xc9, i8 u0xd2, i8 u0x44, i8 u0x9c, i8 u0x2d, i8 u0x72, i8 u0xa8, i8 u0xd3, i8 u0x31, i8 u0x31, i8 u0x9b ], ; module_uuid: 9f8b7cb7-c9f7-44d2-9c2d-72a8d331319b
		i32 46, ; uint32_t entry_count
		i32 10, ; uint32_t duplicate_count
		ptr @module1_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module1_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.1_assembly_name, ; assembly_name: Mono.Android
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	} ; 1
], align 8

; Java types name hashes
@map_java_hashes = dso_local local_unnamed_addr constant [47 x i64] [
	i64 u0x0b1da699fb29019a, ; 0 => android/os/BaseBundle
	i64 u0x1e04bf19f9c14045, ; 1 => android/util/AttributeSet
	i64 u0x1e69018626ef9ffb, ; 2 => android/os/Handler
	i64 u0x225c20a45cb91cd7, ; 3 => java/lang/Error
	i64 u0x406e54c64b3bee74, ; 4 => android/runtime/JavaProxyThrowable
	i64 u0x40c05cff47992547, ; 5 => android/view/ViewGroup
	i64 u0x48e1abb584b78c94, ; 6 => java/io/Writer
	i64 u0x5181b129b1a25949, ; 7 => java/lang/Class
	i64 u0x54c5d3387059fe2c, ; 8 => mono/android/view/View_OnClickListenerImplementor
	i64 u0x56365290d5a06704, ; 9 => java/lang/LinkageError
	i64 u0x5a6af884fe3c181e, ; 10 => android/os/Bundle
	i64 u0x5b905726d9bc975f, ; 11 => android/widget/TextView
	i64 u0x5bfd65ae1a6e6ffc, ; 12 => android/app/Activity
	i64 u0x5f5a9fc3430795a4, ; 13 => android/content/ContextWrapper
	i64 u0x65f6b14b7e978927, ; 14 => java/io/IOException
	i64 u0x6e0fb15bd0f04d15, ; 15 => java/lang/StackTraceElement
	i64 u0x75591c18ddf5e52d, ; 16 => mono/android/TypeManager
	i64 u0x76cbd2104dd555ed, ; 17 => android/content/Context
	i64 u0x76cd544434e023e9, ; 18 => android/widget/AbsoluteLayout
	i64 u0x79b8e6ed4e0962cc, ; 19 => android/webkit/WebView
	i64 u0x88f7510c649f4a97, ; 20 => java/io/InputStream
	i64 u0x90b4aeb45636cd6a, ; 21 => mono/android/runtime/OutputStreamAdapter
	i64 u0x92188d393e2af2d2, ; 22 => java/lang/Throwable
	i64 u0x92b59c839bc46278, ; 23 => java/lang/Thread
	i64 u0x965bfaf1ff1da014, ; 24 => java/lang/ReflectiveOperationException
	i64 u0x99df91bab800c287, ; 25 => mono/android/runtime/InputStreamAdapter
	i64 u0x9e10a0b3efa170dc, ; 26 => android/view/ContextThemeWrapper
	i64 u0xa865adbdd81d9951, ; 27 => java/io/OutputStream
	i64 u0xabc3cd0f40f748aa, ; 28 => java/lang/String
	i64 u0xb18d71343ca8e96f, ; 29 => java/lang/Exception
	i64 u0xb8df224d6b778ca3, ; 30 => android/view/View
	i64 u0xbb41c32523812652, ; 31 => android/widget/Button
	i64 u0xbb84ccbe48f6c18b, ; 32 => android/os/Looper
	i64 u0xbf6d427143271cb3, ; 33 => java/lang/Object
	i64 u0xc00f4c2f11efdcff, ; 34 => java/lang/ClassNotFoundException
	i64 u0xc2a8e50a5f08afc6, ; 35 => mono/java/lang/RunnableImplementor
	i64 u0xc99e090e60d66f58, ; 36 => java/io/StringWriter
	i64 u0xcabf871ef950ad91, ; 37 => android/view/View$OnClickListener
	i64 u0xcc306823503920e9, ; 38 => android/app/Application
	i64 u0xcc5fdc478c027644, ; 39 => crc64e4a8d36244cca74b/MainActivity
	i64 u0xe0446bf91fb0c2dd, ; 40 => java/lang/NoClassDefFoundError
	i64 u0xe1b3c5871398eb28, ; 41 => java/nio/channels/FileChannel
	i64 u0xe50fb4f0adb1330f, ; 42 => android/widget/ImageView
	i64 u0xed49ed70aa9be1b3, ; 43 => java/nio/channels/spi/AbstractInterruptibleChannel
	i64 u0xef2f2996a1d369cc, ; 44 => java/io/FileInputStream
	i64 u0xef953c41325a3428, ; 45 => java/io/PrintWriter
	i64 u0xfd2b1a3de667eb51 ; 46 => java/lang/Runnable
], align 8

@module0_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000002, ; uint32_t type_token_id
		i32 39; uint32_t java_map_index
	} ; 0
], align 4

@module1_managed_to_java = internal dso_local constant [46 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000036, ; uint32_t type_token_id
		i32 19; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000037, ; uint32_t type_token_id
		i32 11; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000038, ; uint32_t type_token_id
		i32 18; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000039, ; uint32_t type_token_id
		i32 31; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200003a, ; uint32_t type_token_id
		i32 42; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200003b, ; uint32_t type_token_id
		i32 1; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x0200003d, ; uint32_t type_token_id
		i32 2; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x0200003e, ; uint32_t type_token_id
		i32 0; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x0200003f, ; uint32_t type_token_id
		i32 10; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000040, ; uint32_t type_token_id
		i32 32; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000041, ; uint32_t type_token_id
		i32 30; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x02000042, ; uint32_t type_token_id
		i32 37; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x02000044, ; uint32_t type_token_id
		i32 8; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x02000048, ; uint32_t type_token_id
		i32 26; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x02000049, ; uint32_t type_token_id
		i32 5; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x0200005e, ; uint32_t type_token_id
		i32 25; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000060, ; uint32_t type_token_id
		i32 4; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x0200006b, ; uint32_t type_token_id
		i32 21; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x02000071, ; uint32_t type_token_id
		i32 17; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x02000073, ; uint32_t type_token_id
		i32 13; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x02000075, ; uint32_t type_token_id
		i32 12; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x02000076, ; uint32_t type_token_id
		i32 38; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x02000079, ; uint32_t type_token_id
		i32 41; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x0200007b, ; uint32_t type_token_id
		i32 43; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x0200007d, ; uint32_t type_token_id
		i32 44; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x0200007e, ; uint32_t type_token_id
		i32 20; uint32_t java_map_index
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 u0x02000080, ; uint32_t type_token_id
		i32 14; uint32_t java_map_index
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 u0x02000081, ; uint32_t type_token_id
		i32 27; uint32_t java_map_index
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 u0x02000083, ; uint32_t type_token_id
		i32 45; uint32_t java_map_index
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 u0x02000084, ; uint32_t type_token_id
		i32 36; uint32_t java_map_index
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 u0x02000085, ; uint32_t type_token_id
		i32 6; uint32_t java_map_index
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 u0x02000087, ; uint32_t type_token_id
		i32 7; uint32_t java_map_index
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 u0x02000088, ; uint32_t type_token_id
		i32 34; uint32_t java_map_index
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 u0x02000089, ; uint32_t type_token_id
		i32 29; uint32_t java_map_index
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 u0x0200008a, ; uint32_t type_token_id
		i32 33; uint32_t java_map_index
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 u0x0200008b, ; uint32_t type_token_id
		i32 28; uint32_t java_map_index
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 u0x0200008d, ; uint32_t type_token_id
		i32 23; uint32_t java_map_index
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 u0x0200008e, ; uint32_t type_token_id
		i32 35; uint32_t java_map_index
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 u0x0200008f, ; uint32_t type_token_id
		i32 22; uint32_t java_map_index
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 u0x02000090, ; uint32_t type_token_id
		i32 3; uint32_t java_map_index
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 u0x02000091, ; uint32_t type_token_id
		i32 46; uint32_t java_map_index
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 u0x02000093, ; uint32_t type_token_id
		i32 9; uint32_t java_map_index
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 u0x02000094, ; uint32_t type_token_id
		i32 40; uint32_t java_map_index
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 u0x02000095, ; uint32_t type_token_id
		i32 24; uint32_t java_map_index
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 u0x02000096, ; uint32_t type_token_id
		i32 15; uint32_t java_map_index
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 u0x020000a2, ; uint32_t type_token_id
		i32 16; uint32_t java_map_index
	} ; 45
], align 4

@module1_managed_to_java_duplicates = internal dso_local constant [10 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200003c, ; uint32_t type_token_id
		i32 1; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000043, ; uint32_t type_token_id
		i32 37; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200004a, ; uint32_t type_token_id
		i32 5; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000072, ; uint32_t type_token_id
		i32 17; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200007a, ; uint32_t type_token_id
		i32 41; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200007c, ; uint32_t type_token_id
		i32 43; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x0200007f, ; uint32_t type_token_id
		i32 20; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000082, ; uint32_t type_token_id
		i32 27; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000086, ; uint32_t type_token_id
		i32 6; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000092, ; uint32_t type_token_id
		i32 46; uint32_t java_map_index
	} ; 9
], align 4

; Java to managed map
@map_java = dso_local local_unnamed_addr constant [47 x %struct.TypeMapJava] [
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200003e, ; uint32_t type_token_id
		i32 7; uint32_t java_name_index
	}, ; 0
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 5; uint32_t java_name_index
	}, ; 1
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200003d, ; uint32_t type_token_id
		i32 6; uint32_t java_name_index
	}, ; 2
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000090, ; uint32_t type_token_id
		i32 39; uint32_t java_name_index
	}, ; 3
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000060, ; uint32_t type_token_id
		i32 16; uint32_t java_name_index
	}, ; 4
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000049, ; uint32_t type_token_id
		i32 14; uint32_t java_name_index
	}, ; 5
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000085, ; uint32_t type_token_id
		i32 30; uint32_t java_name_index
	}, ; 6
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000087, ; uint32_t type_token_id
		i32 31; uint32_t java_name_index
	}, ; 7
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000044, ; uint32_t type_token_id
		i32 12; uint32_t java_name_index
	}, ; 8
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000093, ; uint32_t type_token_id
		i32 41; uint32_t java_name_index
	}, ; 9
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200003f, ; uint32_t type_token_id
		i32 8; uint32_t java_name_index
	}, ; 10
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000037, ; uint32_t type_token_id
		i32 1; uint32_t java_name_index
	}, ; 11
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000075, ; uint32_t type_token_id
		i32 20; uint32_t java_name_index
	}, ; 12
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000073, ; uint32_t type_token_id
		i32 19; uint32_t java_name_index
	}, ; 13
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000080, ; uint32_t type_token_id
		i32 26; uint32_t java_name_index
	}, ; 14
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000096, ; uint32_t type_token_id
		i32 44; uint32_t java_name_index
	}, ; 15
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000a2, ; uint32_t type_token_id
		i32 45; uint32_t java_name_index
	}, ; 16
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000071, ; uint32_t type_token_id
		i32 18; uint32_t java_name_index
	}, ; 17
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000038, ; uint32_t type_token_id
		i32 2; uint32_t java_name_index
	}, ; 18
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000036, ; uint32_t type_token_id
		i32 0; uint32_t java_name_index
	}, ; 19
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200007e, ; uint32_t type_token_id
		i32 25; uint32_t java_name_index
	}, ; 20
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200006b, ; uint32_t type_token_id
		i32 17; uint32_t java_name_index
	}, ; 21
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200008f, ; uint32_t type_token_id
		i32 38; uint32_t java_name_index
	}, ; 22
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200008d, ; uint32_t type_token_id
		i32 36; uint32_t java_name_index
	}, ; 23
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000095, ; uint32_t type_token_id
		i32 43; uint32_t java_name_index
	}, ; 24
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200005e, ; uint32_t type_token_id
		i32 15; uint32_t java_name_index
	}, ; 25
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000048, ; uint32_t type_token_id
		i32 13; uint32_t java_name_index
	}, ; 26
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000081, ; uint32_t type_token_id
		i32 27; uint32_t java_name_index
	}, ; 27
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200008b, ; uint32_t type_token_id
		i32 35; uint32_t java_name_index
	}, ; 28
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000089, ; uint32_t type_token_id
		i32 33; uint32_t java_name_index
	}, ; 29
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000041, ; uint32_t type_token_id
		i32 10; uint32_t java_name_index
	}, ; 30
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000039, ; uint32_t type_token_id
		i32 3; uint32_t java_name_index
	}, ; 31
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000040, ; uint32_t type_token_id
		i32 9; uint32_t java_name_index
	}, ; 32
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200008a, ; uint32_t type_token_id
		i32 34; uint32_t java_name_index
	}, ; 33
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000088, ; uint32_t type_token_id
		i32 32; uint32_t java_name_index
	}, ; 34
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200008e, ; uint32_t type_token_id
		i32 37; uint32_t java_name_index
	}, ; 35
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000084, ; uint32_t type_token_id
		i32 29; uint32_t java_name_index
	}, ; 36
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 11; uint32_t java_name_index
	}, ; 37
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000076, ; uint32_t type_token_id
		i32 21; uint32_t java_name_index
	}, ; 38
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x02000002, ; uint32_t type_token_id
		i32 46; uint32_t java_name_index
	}, ; 39
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000094, ; uint32_t type_token_id
		i32 42; uint32_t java_name_index
	}, ; 40
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000079, ; uint32_t type_token_id
		i32 22; uint32_t java_name_index
	}, ; 41
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200003a, ; uint32_t type_token_id
		i32 4; uint32_t java_name_index
	}, ; 42
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200007b, ; uint32_t type_token_id
		i32 23; uint32_t java_name_index
	}, ; 43
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200007d, ; uint32_t type_token_id
		i32 24; uint32_t java_name_index
	}, ; 44
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000083, ; uint32_t type_token_id
		i32 28; uint32_t java_name_index
	}, ; 45
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 40; uint32_t java_name_index
	} ; 46
], align 4

; Java type names
@java_type_names = dso_local local_unnamed_addr constant [47 x ptr] [
	ptr @.str.0, ; 0
	ptr @.str.1, ; 1
	ptr @.str.2, ; 2
	ptr @.str.3, ; 3
	ptr @.str.4, ; 4
	ptr @.str.5, ; 5
	ptr @.str.6, ; 6
	ptr @.str.7, ; 7
	ptr @.str.8, ; 8
	ptr @.str.9, ; 9
	ptr @.str.10, ; 10
	ptr @.str.11, ; 11
	ptr @.str.12, ; 12
	ptr @.str.13, ; 13
	ptr @.str.14, ; 14
	ptr @.str.15, ; 15
	ptr @.str.16, ; 16
	ptr @.str.17, ; 17
	ptr @.str.18, ; 18
	ptr @.str.19, ; 19
	ptr @.str.20, ; 20
	ptr @.str.21, ; 21
	ptr @.str.22, ; 22
	ptr @.str.23, ; 23
	ptr @.str.24, ; 24
	ptr @.str.25, ; 25
	ptr @.str.26, ; 26
	ptr @.str.27, ; 27
	ptr @.str.28, ; 28
	ptr @.str.29, ; 29
	ptr @.str.30, ; 30
	ptr @.str.31, ; 31
	ptr @.str.32, ; 32
	ptr @.str.33, ; 33
	ptr @.str.34, ; 34
	ptr @.str.35, ; 35
	ptr @.str.36, ; 36
	ptr @.str.37, ; 37
	ptr @.str.38, ; 38
	ptr @.str.39, ; 39
	ptr @.str.40, ; 40
	ptr @.str.41, ; 41
	ptr @.str.42, ; 42
	ptr @.str.43, ; 43
	ptr @.str.44, ; 44
	ptr @.str.45, ; 45
	ptr @.str.46 ; 46
], align 8

; Strings
@.str.0 = private unnamed_addr constant [23 x i8] c"android/webkit/WebView\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"android/widget/TextView\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"android/widget/AbsoluteLayout\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"android/widget/Button\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"android/widget/ImageView\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"android/util/AttributeSet\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"android/os/Handler\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"android/os/BaseBundle\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"android/os/Bundle\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"android/os/Looper\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"android/view/View\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"android/view/View$OnClickListener\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"mono/android/view/View_OnClickListenerImplementor\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"android/view/ContextThemeWrapper\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"android/view/ViewGroup\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"mono/android/runtime/InputStreamAdapter\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"android/runtime/JavaProxyThrowable\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"mono/android/runtime/OutputStreamAdapter\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"android/content/Context\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"android/content/ContextWrapper\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"android/app/Activity\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"android/app/Application\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"java/nio/channels/FileChannel\00", align 1
@.str.23 = private unnamed_addr constant [51 x i8] c"java/nio/channels/spi/AbstractInterruptibleChannel\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"java/io/FileInputStream\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"java/io/InputStream\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"java/io/IOException\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"java/io/OutputStream\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"java/io/PrintWriter\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"java/io/StringWriter\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"java/io/Writer\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"java/lang/Class\00", align 1
@.str.32 = private unnamed_addr constant [33 x i8] c"java/lang/ClassNotFoundException\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"java/lang/Exception\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"java/lang/Object\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"java/lang/String\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"java/lang/Thread\00", align 1
@.str.37 = private unnamed_addr constant [35 x i8] c"mono/java/lang/RunnableImplementor\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"java/lang/Throwable\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"java/lang/Error\00", align 1
@.str.40 = private unnamed_addr constant [19 x i8] c"java/lang/Runnable\00", align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"java/lang/LinkageError\00", align 1
@.str.42 = private unnamed_addr constant [31 x i8] c"java/lang/NoClassDefFoundError\00", align 1
@.str.43 = private unnamed_addr constant [39 x i8] c"java/lang/ReflectiveOperationException\00", align 1
@.str.44 = private unnamed_addr constant [28 x i8] c"java/lang/StackTraceElement\00", align 1
@.str.45 = private unnamed_addr constant [25 x i8] c"mono/android/TypeManager\00", align 1
@.str.46 = private unnamed_addr constant [35 x i8] c"crc64e4a8d36244cca74b/MainActivity\00", align 1

;TypeMapModule
@.TypeMapModule.0_assembly_name = private unnamed_addr constant [31 x i8] c"\E8\8D\AF\E6\9D\90\E5\B8\82\E5\9C\BA\E4\B8\AD\E8\8D\AF\E9\A5\AE\E7\89\87\E5\9B\BE\E9\89\B4\00", align 1
@.TypeMapModule.1_assembly_name = private unnamed_addr constant [13 x i8] c"Mono.Android\00", align 1

; Metadata
!llvm.module.flags = !{!0, !1, !7, !8, !9, !10}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!".NET for Android remotes/origin/release/9.0.1xx @ e7876a4f92d894b40c191a24c2b74f06d4bf4573"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"branch-target-enforcement", i32 0}
!8 = !{i32 1, !"sign-return-address", i32 0}
!9 = !{i32 1, !"sign-return-address-all", i32 0}
!10 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
