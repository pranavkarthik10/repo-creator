import sys
import os
from github import Github


def create():
    print(sys.argv)
    name = sys.argv[1]
    g = Github("user_name", "password")
    u = g.get_user()
    repo = u.create_repo(name)

if __name__ == "__main__":
    create()