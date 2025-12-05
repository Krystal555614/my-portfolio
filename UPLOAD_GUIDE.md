# 期末報告上傳與部署指南 (Upload & Deployment Guide)

本指南將教你如何將這個網頁專案上傳到 GitHub 並使用 GitHub Pages 進行免費部署，讓所有人都能看到你的作品。

## 方法二：使用 Git Bash (最穩定的方法)

如果 `upload.bat` 無法執行，請跟著以下步驟操作：

1.  在桌面上找到 **Git Bash** 的圖示，點兩下打開 (會出現一個黑色視窗)。
2.  輸入 `cd ` (注意 cd 後面有一個空白鍵)。
3.  將桌面上的 **期末報告** 資料夾，直接 **拖曳** 到那個黑色視窗中 (這樣會自動貼上路徑)。
4.  按下 **Enter** 鍵。
5.  打開資料夾中的 **`COMMANDS.txt`** 檔案。
6.  將裡面的指令 **全部複製**。
7.  回到黑色視窗，按滑鼠右鍵選擇 **Paste** (貼上)。
8.  按下 **Enter** 鍵執行。

## 快速上傳 (Automated Script)

## 1. 準備工作 (Prerequisites)

1.  確保你已經安裝了 [Git](https://git-scm.com/)。
2.  擁有一個 [GitHub](https://github.com/) 帳號。

## 2. 初始化 Git (Initialize Git)

如果你還沒有在專案資料夾中初始化 Git，請開啟終端機 (Terminal) 或命令提示字元 (Command Prompt)，進入專案資料夾並執行：

```bash
# 初始化 Git 儲存庫
git init

# 設定你的使用者名稱和 Email (如果尚未設定)
git config --global user.name "Krystal555614"
git config --global user.email "iampolice323@gmail.com"
```

## 3. 提交程式碼 (Commit Code)

將所有檔案加入暫存區並提交：

```bash
# 加入所有檔案
git add .

# 提交並加入註解
git commit -m "Initial commit: 完成期末報告網頁製作"
```

## 4. 上傳到 GitHub (Push to GitHub)

1.  登入 GitHub，點擊右上角的 **+** 號，選擇 **New repository**。
2.  **Repository name** 填寫專案名稱 (例如 `portfolio-final`)。
3.  保持 Public (公開)，點擊 **Create repository**。
4.  在建立完成的頁面中，找到 **…or push an existing repository from the command line** 區塊，複製那三行指令，類似如下：

```bash
git remote add origin https://github.com/Krystal555614/my-portfolio
git branch -M main
git push -u origin main
```

5.  在你的終端機貼上並執行這些指令。

## 5. 設定 GitHub Pages (Deploy)

1.  回到你的 GitHub Repository 頁面。
2.  點擊上方的 **Settings** (設定)。
3.  在左側選單找到 **Pages**。
4.  在 **Build and deployment** 下的 **Source** 選擇 `Deploy from a branch`。
5.  在 **Branch** 區塊，選擇 `main` 分支，資料夾選擇 `/ (root)`，然後點擊 **Save**。
6.  等待幾分鐘後，重新整理頁面，你會看到上方出現你的網站網址 (例如 `https://你的帳號.github.io/portfolio-final/`)。

## 常見指令 (Common Commands)

-   檢查狀態：`git status`
-   查看紀錄：`git log`
-   修改後再次上傳：
    ```bash
    git add .
    git commit -m "更新內容說明"
    git push
    ```

恭喜！你的期末報告已經成功上線了！
