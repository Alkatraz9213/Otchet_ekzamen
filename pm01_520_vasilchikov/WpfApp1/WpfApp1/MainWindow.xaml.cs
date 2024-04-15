using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace WpfApp1
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            InitializeComboBox();
            InitializeEvents();
        }

        private void InitializeComboBox()
        {
            // Заполнение ComboBox данными о направлениях мероприятий
            List directions = new List { "IT", "Медицина", "Искусство", "Наука" };
            directionComboBox.ItemsSource = directions;
        }

        private void InitializeEvents()
        {
            // Загрузка списка мероприятий 
            List events = new List
{
new Event { Name =},
new Event { Name =},
new Event { Name =},
new Event { Name =}
};

            eventsListBox.ItemsSource = events;
        }

        private void FilterButton_Click(object sender, RoutedEventArgs e)
        {
            // Обработчик нажатия кнопки "Фильтровать" 
            // Здесь можно добавить логику фильтрации мероприятий
            MessageBox.Show("Фильтрация мероприятий...");
        }

        private void LoginButton_Click(object sender, RoutedEventArgs e)
        {
            // Обработчик нажатия кнопки "Авторизация" 
            MessageBox.Show("Переход к авторизации...");
        }

        private void DetailsButton_Click(object sender, RoutedEventArgs e)
        {
            // Обработчик нажатия кнопки "Подробнее" 
            if (eventsListBox.SelectedItem != null)
            {
                Event selectedEvent = (Event)eventsListBox.SelectedItem;
                MessageBox.Show($"Подробности о мероприятии:\nНазвание: {selectedEvent.Name}\nНаправление: {selectedEvent.Direction}\nДата: {selectedEvent.Date}");
            }
            else
            {
                MessageBox.Show("Выберите мероприятие для просмотра подробной информации.");
            }
        }
    }

    public class Event
    {
        public string Name { get; set; }
        public string Direction { get; set; }
        public DateTime Date { get; set; }
    }
}
