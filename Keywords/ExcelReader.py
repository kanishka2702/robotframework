import openpyxl

class ExcelReader:

    def read_credentials_from_excel(self, file_path, sheet_name="Login"):
        """
        Reads username and password from Excel.
        Expects headers in row 1: username | password
        Reads data from row 2
        """
        workbook = openpyxl.load_workbook(file_path)
        sheet = workbook[sheet_name]

        username = sheet.cell(row=2, column=1).value
        password = sheet.cell(row=2, column=2).value

        workbook.close()
        return username, password