import cv2
import tesseract
gray = cv2.imread('a.jpg', 0)
cv2.threshold(gray, 231, 255, cv2.THRESH_BINARY)
api = tesseract.TessBaseAPI()
api.Init(".","eng",tesseract.OEM_DEFAULT)
api.SetVariable("tessedit_char_whitelist", "0123456789abcdefghijklmnopqrstuvwxyz")
api.SetPageSegMode(tesseract.PSM_SINGLE_WORD)
tesseract.SetCvImage(gray,api)
print api.GetUTF8Text()
