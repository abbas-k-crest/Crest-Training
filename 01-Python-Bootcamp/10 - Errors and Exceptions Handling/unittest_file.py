import unittest
from unittest_testing_function import cap_text


class TestCap(unittest.TestCase):

    def test_one(self):

        text = "python"
        result = cap_text(text)

        self.assertEqual(result, 'Python')

    def test_multiple(self):

        text = 'python in multiple text'
        result = cap_text(text)

        self.assertEqual(result, 'Python in multiple text')


if __name__ == "__main__":

     unittest.main()

