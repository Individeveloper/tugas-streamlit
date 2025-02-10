import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import streamlit as st
from babel.numbers import format_currency

df = pd.read_csv('main_data.csv')

st.title("Air Quality Aotizhongxin")
plt.figure(figsize=(10, 5))
plt.bar(
    df["year"],
    df["TEMP"],
    color="#72BCD4",
    width=0.5
)
plt.title("Suhu Aotizhongxin (2013-2017)", loc="center", fontsize=20)
plt.xlabel("Tahun", fontsize=12)
plt.ylabel("Temperatur", fontsize=12)
plt.xticks(df["year"], fontsize=10)
plt.yticks(fontsize=10)
plt.grid(axis='y', linestyle='--', alpha=0.7)
st.pyplot(plt.gcf())



plt.figure(figsize=(10, 5))
plt.bar(
    df["year"],
    df["RAIN"],
    color="#72BCD4",
    width=0.5
)
plt.title("Curah Hujan Aotizhongxin (2013-2017)", loc="center", fontsize=20)
plt.xlabel("Tahun", fontsize=12)
plt.ylabel("Curah Hujan", fontsize=12)
plt.xticks(df["year"], fontsize=10)
plt.yticks(fontsize=10)
plt.grid(axis='y', linestyle='--', alpha=0.7)
st.pyplot(plt.gcf())


plt.figure(figsize=(10, 5))
plt.bar(
    df["year"],
    df["PRES"],
    color="#72BCD4",
    width=0.5
)
plt.title("Preassure(2013-2017)", loc="center", fontsize=20)
plt.xlabel("Tahun", fontsize=12)
plt.ylabel("Pressure", fontsize=12)
plt.xticks(df["year"], fontsize=10)
plt.yticks(fontsize=10)
plt.grid(axis='y', linestyle='--', alpha=0.7)
st.pyplot(plt.gcf())

plt.figure(figsize=(10, 5))
plt.bar(
    df["year"],
    df["WSPM"],
    color="#72BCD4",
    width=0.5
)
plt.title("WSPM (2013-2017)", loc="center", fontsize=20)
plt.xlabel("Tahun", fontsize=12)
plt.ylabel("WSPM", fontsize=12)
plt.xticks(df["year"], fontsize=10)
plt.yticks(fontsize=10)
plt.grid(axis='y', linestyle='--', alpha=0.7)
st.pyplot(plt.gcf())

plt.figure(figsize=(10, 5))
plt.bar(
    df["year"],
    df["DEWP"],
    color="#72BCD4",
    width=0.5
)
plt.title("DEWP (2013-2017)", loc="center", fontsize=20)
plt.xlabel("Tahun", fontsize=12)
plt.ylabel("DEWP", fontsize=12)
plt.xticks(df["year"], fontsize=10)
plt.yticks(fontsize=10)
plt.grid(axis='y', linestyle='--', alpha=0.7)
st.pyplot(plt.gcf())