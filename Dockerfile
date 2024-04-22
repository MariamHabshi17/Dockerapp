FROM python
WORKDIR /mycode
COPY mycode.py paragraphs.txt /mycode/

# Install NLTK and download necessary data
RUN pip install nltk
RUN python -m nltk.downloader stopwords punkt
CMD ["python", "mycode.py"]
