#include <syslog.h>
#include <stdio.h>
#include <stdlib.h>

void log_message(int priority, const char *message)
{
	openlog("writer", LOG_PID | LOG_CONS, LOG_USER);
	syslog(priority, "%s", message);
	closelog();	
}

int main(int argc, char *argv[])
{
	if (argc != 3)
	{
		fprintf(stderr, "Usage: %s <file_path> <string_to_write>\n", argv[0]);
		return EXIT_FAILURE;
	}	
	
	const char *file_path = argv[1];
	const char *string_to_write = argv[2];

	log_message(LOG_DEBUG, "Write to file.");
	log_message(LOG_DEBUG, file_path);
	log_message(LOG_DEBUG, string_to_write);

	FILE *file = fopen(file_path, "a");
	if(file == NULL)
	{
		log_message(LOG_ERR, "Error opening file.");
	 	perror("Error opening file.");
		fclose(file);
		return EXIT_FAILURE;
	}
	
	if (fprintf(file, "%s\n", string_to_write) < 0)
	{
		log_message(LOG_ERR, "Error writing to file.");
		perror("Error opening file.");
		fclose(file);
		return EXIT_FAILURE;
	}

	fclose(file);
	log_message(LOG_DEBUG, "Write operation completed successfully.");

	return EXIT_SUCCESS;
}

