import threading
import os

len_file = 0

def start_demon():
    log_path = "/home/ilya/Desktop/log.log"
    os.system(f'echo -n "" > {log_path}')
    os.system(f"tail -f {log_path} > tmp.txt")


def read_log():
    global len_file
    while True:
        with open("tmp.txt", "r") as tmp:
            data = tmp.read()
            len_tmp = len(data)
        if len_tmp > len_file:
            len_file = len_tmp
            ip = data.split("\n")[-1].split("}")[-1].split("->")[0].split(":")[0].strip()
            print(f"SCAN - {ip}")
            os.system(f"sudo iptables -I INPUT -s {ip} -j DROP")
            os.system(f"sudo iptables -I FORWARD -s {ip} -j DROP")


if __name__ == "__main__":
    threading.Thread(target=start_demon).start()
    threading.Thread(target=read_log).start()
