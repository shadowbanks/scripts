# My Scripts

## 🎵 Create Spotify Playlist from Excel — `create_spotify_playlist.py`

This script reads a list of songs from an Excel file and automatically creates a Spotify playlist using the **Spotify Web API**.

---

### ✅ Dependencies

Make sure you have **Python 3** installed, then install the required packages:

```bash
pip install spotipy python-dotenv openpyxl
```

### 🔐 Environment Variables

Create a `.env` file in the root directory with your Spotify API credentials:
PS: There's a `.env_example`
```ini
SPOTIPY_CLIENT_ID=your_client_id
SPOTIPY_CLIENT_SECRET=your_client_secret
SPOTIPY_REDIRECT_URI=your_redirect_uri
PLAYLIST_NAME=YOUR_PLAYLIST_NAME
PLAYLIST_DESCRIPTION=YOUR_PLAYLIST_DESCRIPTION
```
You can get these credentials by creating an app at [Spotify for Developers](https://developer.spotify.com/dashboard/).

### 📄 Input Data

Place your Excel file at `data/spotify_playlist.xlsx` with the following format:

| Track Name   | Artist Name |
|--------------|-------------|
| Song Title 1 | Artist 1    |
| Song Title 2 | Artist 2    |


### ▶️ Usage

Run the script with:

```bash
python3 create_spotify_playlist.py
```

> **Note:** It can take a while depending on the number of songs being added.
