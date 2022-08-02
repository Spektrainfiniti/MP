import os

def main():
    pathh = "C:\\Share"
    os.chdir(pathh)
    while True:
        list_files = os.listdir(os.getcwd())
        if "FLAG.txt" in list_files:
            try:
                with open(os.path.join(pathh, "FLAG.txt"), "r+") as flag:
                    flag = flag.read()
                with open("flaaag.txt", "w") as new_flag:
                    new_flag.write(flag)
                    break
            except:
                pass

main()