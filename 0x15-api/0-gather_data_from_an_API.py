#!/usr/bin/python3
"""
Python script that, using a REST API, for a given employee ID,
returns information about his/her TODO list progress.
"""
import requests
import sys


def fetch_todo_list(employee_id):
    """
    Fetches and displays the TODO list progress for a given employee ID.

    Args:
        employee_id (int): The ID of the employee whose TODO list progress is to be fetched.

    Returns:
        None
    """
    base_url = "https://jsonplaceholder.typicode.com"

    # Fetch employee details
    employee_url = f"{base_url}/users/{employee_id}"
    response = requests.get(employee_url)

    if response.status_code != 200:
        print("Error: Employee not found")
        return

    employee = response.json()
    employee_name = employee['name']

    # Fetch employee's todo list
    todo_url = f"{base_url}/todos?userId={employee_id}"
    response = requests.get(todo_url)

    if response.status_code != 200:
        print("Error: Unable to fetch TODO list")
        return

    todo_list = response.json()

    total_tasks = len(todo_list)
    done_tasks = [task for task in todo_list if task['completed']]
    number_of_done_tasks = len(done_tasks)

    # Print the employee's todo list progress
    print(
        f"Employee {employee_name} is done
        with tasks({number_of_done_tasks}/{total_tasks}): "
    )

    for task in done_tasks:
        print(f"\t {task['title']}")


if __name__ == "__main__":
    """
    Main entry point of the script. It accepts an employee ID as a command-line argument and
    prints the TODO list progress for the given employee.

    Usage:
        python script.py <employee_id>

    Args:
        employee_id (int): The ID of the employee whose TODO list progress is to be fetched.

    Returns:
        None
    """
    if len(sys.argv) != 2:
        print("Usage: python script.py <employee_id>")
        sys.exit(1)

    try:
        employee_id = int(sys.argv[1])
    except ValueError:
        print("Error: Employee ID must be an integer")
        sys.exit(1)

    fetch_todo_list(employee_id)
