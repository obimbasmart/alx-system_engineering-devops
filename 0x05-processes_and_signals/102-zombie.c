#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>
#include <stdlib.h>

int infinite_while(void);

/**
 * main - create 5 zombie processes
 *
 * Return: 0 on success
 */
int main(void)
{
	pid_t pid, child_pid;
	size_t id = 0;

	while (id < 5)
	{
		pid = fork(); /* create new process */
		if (pid < 0)
			exit(1);

		else if (pid == 0) /* child is running */
		{
			child_pid = getpid();
			printf("Zombie process created, PID: %u\n", child_pid);
			exit(0);
		}

		else
		{
		}  /* parent didn't handle the SIGCHLD by using wait or waitpid */
		id++;
	}

	infinite_while();

	exit(EXIT_SUCCESS);
}

/**
* infinite_while - sleep indifinitely
*
* Return: 0 on success
*/
int infinite_while(void)
{
	while (1)
	{
		sleep(1);
	}
	return (0);
}
