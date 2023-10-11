# todo.py

import sys

# Define a list to store tasks
tasks = []

# Function to add a task to the list
def add_task(task):
    tasks.append(task)
    print("Task added:", task)

# Function to list all tasks
def list_tasks():
    if not tasks:
        print("No tasks in the to-do list.")
    else:
        print("To-Do List:")
        for i, task in enumerate(tasks, 1):
            print(f"{i}. {task}")

# Function to remove a task from the list
def remove_task(index):
    if 1 <= index <= len(tasks):
        removed_task = tasks.pop(index - 1)
        print(f"Task removed: {removed_task}")
    else:
        print("Invalid task number.")

# Main function
def main():
    while True:
        print("\nOptions:")
        print("1. Add a task")
        print("2. List tasks")
        print("3. Remove a task")
        print("4. Quit")

        choice = input("Enter your choice: ")

        if choice == '1':
            task = input("Enter the task: ")
            add_task(task)
        elif choice == '2':
            list_tasks()
        elif choice == '3':
            list_tasks()
            task_num = int(input("Enter the task number to remove: "))
            remove_task(task_num)
        elif choice == '4':
            print("Goodbye!")
            sys.exit(0)
        else:
            print("Invalid choice. Please try again.")

if __name__ == "__main__":
    main()
